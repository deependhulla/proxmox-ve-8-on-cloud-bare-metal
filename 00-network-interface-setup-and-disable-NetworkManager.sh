#!/bin/bash
clear
### need to get network first up as per proxmox
echo "------------"
extra-files/generate_interfaces.pl 
echo "------------"

echo "MAKE SURE YOU HAVE SET ROOT PASSWORD AND ABLE OT LOGIN VIA AWS SERIAL CONSOLE FOR TROUBLESHOOT IF NETWORK GOES AWAY"

apt -y install ifupdown bridge-utils net-tools ethtool
apt -y install ifupdown2
