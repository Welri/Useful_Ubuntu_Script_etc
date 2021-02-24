#!/bin/bash

echo "SETTING UBUNTU TO LOCAL TIME..."
timedatectl set-local-rtc 1 --adjust-system-clock
