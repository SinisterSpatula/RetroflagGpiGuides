#!/bin/bash
# Kernel_Boot_Logo.sh
#############
# This script lets you change your boot logo by installing a new kernel and modules.
#
# v1
# SinisterSpatula - Aug 18 2019
#
# place script in /home/pi/RetroPie/retropiemenu/
# place book logo kernel packs to /opt/bootlogos/
# Making changes to the Linux Kernel is risky, please make a full back-up of your SD card before using this utility.
#  
# This Tool is compatible with pi Zero Retroflag Gpi Case, and Gameboy Zero (pi zero gameboy) or other small screen 320x240
# Pi zero based retropie systems. This is the offline version which relies on local files stored for the boot logo of choice
# and installs it.  The kernels are version 4.14.114.  If you need an offline version, use my other script.
#

#scirpt welcome screen
 dialog --backtitle "W A R N I N G !" --title " WARNING! " \
    --yesno "\nUse only on pi zero,\n Use at your own risk.\nBrought to you by: Gpi Case User group\n View Gallery at\n\n https://bit.ly/2KCwyic\n\n\nAre you sure you want to proceed?" \
    15 75 2>&1 > /dev/tty \
    || exit

function validate_url(){
  if [[ `wget -S --spider $1  2>&1 | grep 'HTTP/1.1 200 OK'` ]]; then
    return 0
  else
    return 1
  fi
}


function install_modules() {
# First check if modules are already installed, if they are not, install them. 
if [ ! -f "/opt/bootlogos/save.cfg" ]; then
	elif [ ! -f "/opt/bootlogos/4.14.114-modules.tar.gz" ]; then 
   	echo -e "Please reinstall logo pack files.\nUnable to find kernel modules in /opt/bootlogos/";
   	sleep 10;
   	exit;
	fi
	
	else
	cd
	cd
	cd /
	sudo cp /opt/bootlogos/4.14.114-modules.tar.gz 4.14.114-modules.tar.gz
    	sudo tar -xzvf 4.14.114-modules.tar.gz; sync
    	sudo rm 4.14.114-modules.tar.gz
    	sudo mkdir -p /opt/bootlogos/
	sudo echo "4.14.114 Kernel Modules have been installed." > /opt/bootlogos/save.cfg
fi
}

function install_logo() {
    if [ -f "/opt/bootlogos/bootlogokernel$choice.tar.gz" ]; then
    cd
    cd
    cd /boot
    sudo cp "/opt/bootlogos/bootlogokernel$choice.tar.gz" bootlogokernel$choice.tar.gz
    sudo tar -xzvf bootlogokernel$choice.tar.gz; sync
    sudo rm bootlogokernel$choice.tar.gz
    
    	if grep "kernel=kernel.img" /boot/config.txt; then
	echo "Kernel command is set correctly.";
    	fi

    	if grep "kernel=zImage" /boot/config.txt; then
	sudo perl -p -i -e 's/zImage/kernel.img/g' /boot/config.txt
    	echo "Changed kernel=zImage to kernel=kernel.img in /boot/config.txt";
    	fi

    else
        echo "Please reinstall logo pack files.\nUnable to find boot logo kernel in /opt/bootlogos/."
        sleep 10;
        exit;
    fi
}


function main_menu() {
    local choice

    while true; do
        choice=$(dialog --backtitle "$BACKTITLE" --title " MAIN MENU " \
            --ok-label Install --cancel-label Exit \
            --menu "Pick a boot logo." 17 75 10 \
            1 "Blue Retropie" \
            2 "D.A.R.E" \
            3 "Retroflag" \
            4 "Mario and friends" \
	    5 "Nintendo" \
	    6 "Winner's Don't Use Drugs" \
            7 "TNMNT" \
            8 "Blue Loading" \
            9 "Retropie game" \
            10 "Retropie Nintendo" \
            11 "Retro Terminal" \
            12 "Shall We Play a Game" \
            13 "RetroGPie" \
            14 "Super Illegal" \
            15 "All your base" \
            16 "Somebody Set Up Us the Bomb" \
            17 "Donkey Kong" \
            18 "LCD Retropie" \
            19 "Red Retropie" \
            20 "Bubble Bobble" \
            21 "Shroomie" \
            22 "Super Retropie team" \
            23 "Supreme team" \
            24 "Renegade Labs" \
            25 "Remove Boot Logo" \
            2>&1 > /dev/tty)
        
        case "$choice" in
            "") break;;
            *) install_modules;
            install_logo;
	    echo "Saving changes to disk";
	    sync;
            echo "All done.  Shutting down now..."
	    echo "wait for shutdown to finish before switching off."
            sleep 10;
	    sudo shutdown -h now    
            exit

        esac

    done
}


# START HERE #################################################################

main_menu
