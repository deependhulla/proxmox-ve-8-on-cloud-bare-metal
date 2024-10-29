#!/bin/sh






#amd64-microcode - Processor microcode firmware for AMD CPUs
#intel-microcode - Processor microcode firmware for Intel CPUs
##As mostly we have customer on Intel 
apt update

#apt -y install intel-microcode 

apt -y install amd64-microcode 
