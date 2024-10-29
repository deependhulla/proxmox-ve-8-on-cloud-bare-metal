#!/bin/bash
clear
### need to get network first up as per proxmox
echo "------------"
extra-files/generate_interfaces.pl 
echo "------------"

apt -y install ifupdown bridge-utils

