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

function validate_url(){
  if [[ `wget -S --spider $1  2>&1 | grep 'HTTP/1.1 200 OK'` ]]; then
    return 0
  else
    return 1
  fi
}

if validate_url https://github.com/SinisterSpatula/SuperRetropieGuides/raw/master/data/kernel/sr-kernel.tar.gz; then
sudo wget -O /sr-kernel.tar.gz https://github.com/SinisterSpatula/SuperRetropieGuides/raw/master/data/kernel/sr-kernel.tar.gz
sudo wget -O /boot/sr-modules.tar.gz https://github.com/SinisterSpatula/SuperRetropieGuides/raw/master/data/kernel/sr-modules.tar.gz
cd /
sudo tar -xzvf sr-modules.tar.gz
cd /boot
sudo tar -xzvf sr-kernel.tar.gz
echo "--------------------------"
echo "|| Success!  Rebooting! ||"
echo "--------------------------"
sleep 10s
sudo reboot
     else
    echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
    echo ".                                      ."
    echo ".FAILED! File not available or wifi off."
    echo ".                                      ."
    echo "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
    sleep 10s
    exit
