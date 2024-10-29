#!/bin/bash

echo "Updating LXC Container List and downloading Ubuntu 24.04 LTS Server Container images"
pveam update
#pveam available --section system
#pveam download local debian-11-standard_11.7-1_amd64.tar.zst
pveam download local ubuntu-24.04-standard_24.04-2_amd64.tar.zst
