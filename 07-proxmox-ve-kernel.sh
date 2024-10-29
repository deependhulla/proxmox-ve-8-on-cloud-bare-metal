#!/bin/bash

apt update && apt full-upgrade

apt install proxmox-default-kernel

systemctl reboot


