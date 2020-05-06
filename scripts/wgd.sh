#!/usr/bin/env bash

sudo wg-quick down $(sudo wg show | grep interface | awk -F ": " '{print $2}')
