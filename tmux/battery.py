#!/usr/bin/env python

cap_f = open('/sys/class/power_supply/BAT0/capacity')
capacity = cap_f.read().strip()
cap_f.close()

stat_f = open('/sys/class/power_supply/BAT0/status')
status = stat_f.read().strip()
stat_f.close()

if status != "Discharging":
    print(f' {capacity}%')
else:
    stats_i = ""
    capacity = int(capacity)
    if capacity > 89:
        stats_i = " "
    elif capacity > 59:
        stats_i = " "
    elif capacity > 29:
        stats_i = " "
    elif capacity > 10:
        stats_i = " "
    else:
        stats_i = " "

    print(f'{stats_i} {capacity}%')
