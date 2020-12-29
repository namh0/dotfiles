#!/usr/bin/env python


def main():
    with open("/sys/class/power_supply/BAT0/capacity") as cap_f:
        capacity = int(cap_f.read().strip())

    with open("/sys/class/power_supply/BAT0/status") as stat_f:
        status = stat_f.read().strip()

    if status != "Discharging":
        print(f" {capacity}%")
    else:
        print(f"{capacity_icon(capacity)} {capacity}%")


def capacity_icon(cap: int) -> str:
    if cap > 89:
        return " "
    elif cap > 59:
        return " "
    elif cap > 29:
        return " "
    elif cap > 10:
        return " "
    else:
        return " "


if __name__ == "__main__":
    main()
