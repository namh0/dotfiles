#!/bin/bash

if [[ $(grep "XHC" /proc/acpi/wakeup | grep "enabled") ]]; then
    echo "XHC" > /proc/acpi/wakeup
fi

if [[ $(grep "RP07" /proc/acpi/wakeup | grep "enabled") ]]; then
    echo "RP07" > /proc/acpi/wakeup
fi

if [[ $(grep "RP09" /proc/acpi/wakeup | grep "enabled") ]]; then
    echo "RP09" > /proc/acpi/wakeup
fi

