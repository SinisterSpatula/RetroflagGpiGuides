![SR Image](https://sinisterspatula.github.io/SuperRetropieGuides/images/SRimage-short.jpg)

[Back to Index](https://sinisterspatula.github.io/SuperRetropieGuides/)

Shoutout and big ups to: Adam Forrester (me!) Haha :D

# Cannonball (Outrun Engine) Pi zero/Gpi case Guide

* [Connect to your GPi using SSH.](https://www.youtube.com/watch?v=aEJoQZBSlSs)

## Install the existing cannonball module

* Launch retropie setup

```shell
cd ~
cd RetroPie-Setup/
sudo ./retropie_setup.sh
```

* Navigate to Manage Packages, Optional, Cannonball.
* Install from Binary. (don't worry this one only takes a moment)
* Exit out of Setup and back to the command line.
* Fix permissions `sudo chmod 777 /home/pi/RetroPie/roms/ports/cannonball/`

## Add the game data files

> Use your favorite search engine to locate and download outrun.zip perhaps the term `outrun.zip` or `Out Run (sitdown/upright, Rev B)` may help in your quest.  Refer to the file /home/pi/RetroPie/roms/ports/cannonball/roms.txt to see exactly what files you need. Once you have the files, you will extract them and upload them to your Gpi to the following location: `/home/pi/RetroPie/roms/ports/cannonball` you should have a bunch of epr-, opr-, and mpr- files in this location in order for the game to work.  If you can't copy the files, make sure you didn't skip the fix permissions step from above.


## config.xml and config.xml.def (*required!*)
> The config files are required to setup the controls and video mode for cannonball.  Run the commands to download and install them:

```shell
sudo mkdir -p /opt/retropie/configs/ports/cannonball/ && sudo wget -O /opt/retropie/configs/ports/cannonball/config.xml https://github.com/SinisterSpatula/SuperRetropieGuides/raw/master/data/cannonball/config.xml
```

```shell
sudo mkdir -p /opt/retropie/ports/cannonball/ && sudo wget -O /opt/retropie/ports/cannonball/config.xml.def https://github.com/SinisterSpatula/SuperRetropieGuides/raw/master/data/cannonball/config.xml.def
```

## Now we build a replacement executable file for cannonball and copy it over to it's proper location.

* Copy and paste (hit enter) to run each of these below commands, one line at a time:

```shell
cd ~
sudo apt install cmake
git clone https://github.com/SinisterSpatula/cannonball.git --branch master --depth=1
cd cannonball
mkdir build
cd build
cmake -G "Unix Makefiles" -DTARGET=sdl2gles_rpi ../cmake
make
sudo cp cannonball /opt/retropie/ports/cannonball/
cd ~
sudo rm -r ~/cannonball/
```


## Controls:
First, make sure you have migrated to the new controller framework by [following the steps here](https://github.com/SinisterSpatula/Gpi)
Or if you have already migrated, then just go to Controllertools then Control_Updater_Menu, then do option 1 (update controls).
Also, make sure you installed both config.xml and config.xml.def from above.

## Launch the game:
You should have a Cannonball - Outrun Engine listed in your ports section of emulation station now.  Launch this to play.  If you don't see this, you may need to retstart emulationstation, and also make sure "Parse gamelists only" is turned off in your emulationstation settings.

## Support Thread
[Go here for help](https://www.facebook.com/groups/SuperRetroPie/permalink/2467529166867395/)

[Back to Index](https://sinisterspatula.github.io/SuperRetropieGuides/)

###### Head back to our [Facebook Group](https://www.facebook.com/groups/SuperRetroPie/)
