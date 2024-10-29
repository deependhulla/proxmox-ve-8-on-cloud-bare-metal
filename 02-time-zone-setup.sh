#!/bin/bash

# for Debian 12
## set to India IST timezone -- You can dissable it if needed
timedatectl set-timezone 'Asia/Kolkata'
dpkg-reconfigure -f noninteractive tzdata


date

