#!/bin/bash
# WINDOWS_ENTRY="0004"
WINDOWS_ENTRY=$(efibootmgr | grep -i "Windows Boot Manager" | grep -oP '(?<=Boot)\d{4}' | head -1)
sudo efibootmgr -n "$WINDOWS_ENTRY" && reboot
