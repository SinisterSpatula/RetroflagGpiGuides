![SR Image](https://sinisterspatula.github.io/SuperRetropieGuides/images/SRimage-short.jpg)

[Back to Index](https://sinisterspatula.github.io/SuperRetropieGuides/)

Shoutout and big ups to: Kev

# SORR - Streets of Rage Remake Guide

* [Connect to your GPi using SSH.](https://www.youtube.com/watch?v=aEJoQZBSlSs)

## Install the script module

```shell
wget -O /home/pi/RetroPie-Setup/scriptmodules/ports/sorr.sh https://github.com/zerojay/RetroPie-Extra/raw/master/scriptmodules/ports/sorr.sh
```

* Launch retropie setup

```shell
cd ~
cd RetroPie-Setup/
sudo ./retropie_setup.sh
```

* Navigate to Manage Packages, Experimental, Sorr.
* Install from Source. (don't worry this one only takes a moment)
* Fix permissions `sudo chmod 777 /opt/retropie/ports/sorr`

## Add the game data files

> Use your favorite search engine to locate and download sorr.zip perhaps the term `sorr.zip` or `Streets of Rage Remake` may help in your quest.  Look for v5.1, and you can use either the windows or linux/debian version it does not matter which.  Once you have the files, you will extract them and upload them to your Gpi to the following location: `/opt/retropie/ports/sorr` you should have a /mod folder, a /palettes folder, and SorR.dat file in this location in order for the game to work.  (the bgdi-330 file, get's placed here during the scriptmodule install, automatically.  This is the sorr executable program).  If you can't copy the files, make sure you didn't skip the fix permissions step from above.



## Savegame.sor (*required!*)
> The save game file will help you get it running properly by setting the correct controls and video mode.
Pick either the standard (nothing is unlocked, you unlock things by playing) or the fully unlocked version, but not both.  Run the command that corrosponds to your preference:

### Standard (Nothing unlocked) Savegame:
```shell
mkdir -p /opt/retropie/configs/ports/sorr/ && wget -O /opt/retropie/configs/ports/sorr/savegame.sor https://github.com/SinisterSpatula/SuperRetropieGuides/raw/master/data/sorr/savegame.sor
```

### -OR-

### Fully unlocked Savegame:
```shell
mkdir -p /opt/retropie/configs/ports/sorr/ && wget -O /opt/retropie/configs/ports/sorr/savegame.sor https://github.com/SinisterSpatula/SuperRetropieGuides/raw/master/data/sorr/savegame_unlocked.sor
```


## Controls:
First, make sure you have migrated to the new controller framework by [following the steps here](https://github.com/SinisterSpatula/Gpi)
Or if you have already migrated, then just go to Controllertools then Control_Updater_Menu, then do option 1 (update controls).
Also, make sure you installed one of the savegames from above.

## Launch the game:
You should have a Streets of Rage Remake listed in your ports section of emulation station now.  Launch this to play.  If you don't see this, you may need to retstart emulationstation, and also make sure "Parse gamelists only" is turned off in your emulationstation settings.

## Support Thread
[Go here for help](https://www.facebook.com/groups/SuperRetroPie/permalink/2465577723729206/)

[Back to Index](https://sinisterspatula.github.io/SuperRetropieGuides/)

###### Head back to our [Facebook Group](https://www.facebook.com/groups/SuperRetroPie/)
