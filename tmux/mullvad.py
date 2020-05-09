#!/usr/bin/env python

import subprocess, re

process = subprocess.Popen(['mullvad', 'status', '-l'], stdout=subprocess.PIPE, stderr=subprocess.PIPE)

stdout, stderr = process.communicate()

if len(stderr) != 0:
    print(f'Error: {stderr.decode("utf-8")}')
else:
    stdout = stdout.decode('utf-8').strip()
    status_check = re.compile(r'(^Tunnel status: )(.*)')
    status = status_check.match(stdout).groups()[1]
    location = re.findall(r'(Location: )(.*)', stdout)[0][1].split(',')[0]
    if status == 'Disconnected':
        print(f' {status}  {location}')
    else:
        relay = re.findall(r'(Relay: )(.*)', stdout)[0][1]
        print(f' {relay}  {location}') 
