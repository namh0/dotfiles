#!/usr/bin/env pypy3

import subprocess, re, json
from pathlib import Path
from typing import Dict


filepath = Path(Path.home(), ".mullvad.json")


def get_mullvad_status() -> (str, str):
    process = subprocess.Popen(
        ["mullvad", "status", "-l"], stdout=subprocess.PIPE, stderr=subprocess.PIPE
    )
    stdout, stderr = process.communicate()
    # print(stdout.decode("utf-8").strip().endswith("unavailable"))
    location = ""
    status = "Wireguard Connected"
    if len(stderr) == 0:
        stdout = stdout.decode("utf-8").strip()
        if not stdout.endswith("unavailable"):
            location = (
                "  "
                + re.findall(r"(Location: )(.*)", stdout)[0][1].split(",")[0].strip()
            )
            status = re.findall(r"(Relay: )(.*)", stdout)[0][1].split(",")[0].strip()
    return status, location


def quick_status_check() -> (bool, str):
    process = subprocess.Popen(
        ["mullvad", "status"], stdout=subprocess.PIPE, stderr=subprocess.PIPE
    )
    stdout, stderr = process.communicate()
    if len(stdout) == 0 and len(stderr) == 0:
        return False, ""
    endpoint_re = re.findall(r"(\d+.\d+.\d+.\d+)(:\d+)", stdout.decode("utf-8"))
    if len(endpoint_re) == 0:
        return False, ""
    endpoint = endpoint_re[0][0].strip()
    return True, endpoint


def should_update(ep: str) -> (bool, Dict):
    with open(filepath, "r") as file:
        raw = file.read()
        data = {}
        if len(raw) != 0:
            data = json.loads(raw)
            if data["endpoint"] == ep:
                return False, data
            else:
                return True, data

    return True, data


def update_file(data: Dict[str, str]):
    with open(filepath, "w") as file:
        json.dump(data, file, indent=2)


def main():
    if not filepath.exists():
        filepath.touch()

    check, endpoint = quick_status_check()
    status_i = ""
    data = {}
    data["status"] = "Disconnected"
    data["location"] = ""

    if check:
        status_i = ""
        should, data = should_update(endpoint)
        if should:
            data["status"], data["location"] = get_mullvad_status()
            data["endpoint"] = endpoint
            update_file(data)

    print(f'{status_i} {data["status"]}{data["location"]}')


if __name__ == "__main__":
    main()
