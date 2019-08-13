#!/bin/bash
#=============================================================================
#title:         kernel.sh
#description:   Install Super Retropie Custom Kernel with boot logo
#author:        Adam
#created:       Aug 8 2019
#updated:       N/A
#version:       1.0
#usage:         sudo ./kernel.sh
#==============================================================================

cd
cd
cd /boot

sudo wget -O sr-kernel.tar.gz https://github.com/SinisterSpatula/RetroflagGpiGuides/raw/master/data/kernel/sr-kernel.tar.gz
sudo tar -xzvf sr-kernel.tar.gz


cd
cd
cd /
sudo wget -O sr-modules.tar.gz https://github.com/SinisterSpatula/RetroflagGpiGuides/raw/master/data/kernel/sr-modules.tar.gz
sudo tar -xzvf sr-modules.tar.gz

echo "--------------------------"
echo "|| Done.  Rebooting!    ||"
echo "--------------------------"
sleep 10s
sudo reboot
