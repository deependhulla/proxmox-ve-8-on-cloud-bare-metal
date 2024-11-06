#!/bin/bash
clear
### need to get network first up as per proxmox
echo "------------"
extra-files/generate_interfaces.pl 
echo "------------"
## sample interface file in extra-files
echo "MAKE SURE YOU HAVE SET ROOT PASSWORD AND ABLE OT LOGIN VIA AWS SERIAL CONSOLE FOR TROUBLESHOOT IF NETWORK GOES AWAY"

apt -y install ifupdown bridge-utils net-tools ethtool
apt -y install ifupdown2


## Enable root login for proxmox for management on SSH.... latter only allow via wirguard and not from your cloud provider port 22

##Comment this if you do not want root login via ssh activated using port 7722
sed -i "s/#PermitRootLogin prohibit-password/PermitRootLogin yes/g" /etc/ssh/sshd_config
#sed -i "s/#Port 22/Port 7722/g" /etc/ssh/sshd_config
systemctl restart ssh

