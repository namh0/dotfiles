#!/usr/bin/env python

import os

stream = os.popen('nmcli connection show --active | sed -n 2p')
out = stream.read().split('  ')

net_type = out[2]
net_name = out[0]
net_icon = " "

if net_type == "ethernet":
    net_name = "ethernet"
    net_icon = " " # closest icon that works...
print(f'{net_icon} {net_name}')
