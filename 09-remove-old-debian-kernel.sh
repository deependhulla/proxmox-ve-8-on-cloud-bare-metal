#!/bin/bash


apt remove linux-image-amd64 'linux-image-6.1*'

update-grub

apt remove os-prober

