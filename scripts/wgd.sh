#!/usr/bin/env zsh

wg-quick down $(sudo wg show | grep interface | awk -F ": " '{print $2}')
