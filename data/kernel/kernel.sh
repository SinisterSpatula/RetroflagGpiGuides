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


sudo wget -O /sr-kernel.tar.gz https://github.com/SinisterSpatula/SuperRetropieGuides/raw/master/data/kernel/sr-kernel.tar.gz
sudo wget -O /boot/sr-modules.tar.gz https://github.com/SinisterSpatula/SuperRetropieGuides/raw/master/data/kernel/sr-modules.tar.gz
cd /
sudo tar -xzvf /sr-modules.tar.gz /
cd /boot
sudo tar -xzvf /boot/sr-kernel.tar.gz /boot
echo "--------------------------"
echo "|| Done.  Rebooting!    ||"
echo "--------------------------"
sleep 10s
sudo reboot
