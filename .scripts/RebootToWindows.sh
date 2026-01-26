#!/bin/bash
WINDOWS_ENTRY="0004"
sudo efibootmgr -n "$WINDOWS_ENTRY" && reboot
