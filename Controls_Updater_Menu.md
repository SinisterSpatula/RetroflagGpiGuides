![SR Image](https://sinisterspatula.github.io/SuperRetropieGuides/images/SRimage-short.jpg)

[Back to Index](https://sinisterspatula.github.io/SuperRetropieGuides/)

  > #### **IMPORTANT please do not perform updates other than Controls Menu Update.  If you choose to get system updates things may break and it is strongly recommended that you make a backup.**

# Advanced Controller Framework
## Controls_Updater_Menu install guide

Our new SD card image has arrived!  It's a much easier way to go.  This process will still be an option for those who want to add it to an existing image, but by far the easier way is going to be the SuperRetropie [RetroFlag GPi Pre-Made Image](https://www.facebook.com/notes/super-retropie/retroflag-gpi-pre-made-image/2425992267687752/)

Follow this guide to manually add our Controllertools/Controls_Updater_Menu to an existing image.

* [Connect to your GPi with SSH (Putty).](https://www.youtube.com/watch?v=aEJoQZBSlSs)
* Log in (username pi and pw raspberry)
  * you should be at the pi@retropie:~ $
command prompt.

* pi@retropie:~ $  sudo ./RetroPie-Setup/retropie_setup.sh [enter]
* go to manage packages, driver, xboxdrv, install from source.
  * It takes 1 hour 15 mins to compile.

* Select 'Enable xboxdrv' from the setup menu. [enter]
  * and then 'Disable xboxdrv' [enter]
* Exit the setup menu.

* pi@retropie:~ $  sudo reboot [enter] and wait for it to reboot.
* Then reconnect to the SSH session again.

* First, modify your `runcommand-onstart.sh` to include the xboxdrv command (and remove any previous controller mappings, they are no longer being housed in this script and they have a new home in xboxdrvstart.sh):

`sudo nano /opt/retropie/configs/all/runcommand-onstart.sh`

```
#!/bin/sh

source /opt/retropie/configs/all/xboxdrvstart.sh > /dev/null 2>&1
sudo pkill -STOP mpg123 > /dev/null 2>&1
```

* And then please also modify `runcommand-onend.sh` to include the xboxdrv command:

`sudo nano /opt/retropie/configs/all/runcommand-onend.sh`

```
#!/bin/sh

source /opt/retropie/configs/all/xboxdrvend.sh > /dev/null 2>&1
sudo pkill -CONT mpg123 > /dev/null 2>&1
```

`Make them executable with: sudo chmod +x *.sh`

## Install the controls_updater_menu

```shell
sudo mkdir -p ~/RetroPie/retropiemenu/Controllertools && cd && cd ~/RetroPie/retropiemenu/Controllertools && sudo wget -O control_updater_menu.sh https://raw.githubusercontent.com/SinisterSpatula/Gpi2/master/control_updater_menu.sh && sudo chmod 775 control_updater_menu.sh
```

## Switch the D-pad mode of the Gpi case (if you desire):

The Gpi has a hidden option to change the D-PAD mode. To switch to direct input mode, press SELECT+DPAD LEFT for 5 seconds. You will know it worked when the LED flashes. If you need to revert back to facotry D-pad mode: To switch to hat mode (factory) press SELECT+DPAD UP for 5 seconds.  It does not matter which mode your d-pad is in for these mappings, they now work with both modes!

## Finish Up install

Launch the Controllertools/Controls_Updater_menu and pick option 1.  This will install the rest of the files and get the latest controller mappings.
  > If you are having trouble finding the Controllertools/Controls_Updater_Menu in your menu, make sure you press start and go to “Other Settings” and make sure “Parse Gamelists Only” is set to OFF. (and restart emulation station, so it will parse and show it).


  ![ControlsUpdateMenuImg](https://sinisterspatula.github.io/SuperRetropieGuides/images/ControlsUpdateMenuImg.PNG)  

## Things to keep in mind:
If you have previously setup your key bindings in one of the standalone cores, it is helpful to reset them back to default settings (usually by deleting it's config file, check the [retropie wiki](https://github.com/RetroPie/RetroPie-Setup/wiki/) for the core in question to find the config file location).  Our controller scripts  are based on default bindings.  If you want to check if a script has been written for a core, [check the script here.](https://github.com/SinisterSpatula/Gpi2/blob/master/xboxdrvstart.sh)  Controller Diagrams are [located here](https://photos.app.goo.gl/iM52fxLmjadTocyk8)

* If you have suggestions for improving these control maps, please add your comments or questions.

## Updating your Controls_Updater_Menu itself

  > Newer versions of the Controls_Updater_Menu will have a self-update function, and have additional enhancements like saftey checks before updating (making sure there is wifi connection before deleting the old versions and grabbing new versions).

* It's best to remove your runcommand-onstart.sh and runcommand-onend.sh and start them fresh just like the above instructions. Don't forget to make them executable with `sudo chmod a+x *.sh`

* delete the old controls_update_menu.sh, it will be replaced by a new one, and inside of a new directory.  Once you've cleaned house on your runcommand-onstart.sh and runcommand-onend.sh and removed the old controls_updater_menu.sh, just follow the above install instructions.


## Developers
For developers who would like to help with mapping, you can find xboxdrv documentation [HERE](https://xboxdrv.gitlab.io/xboxdrv.html)
```
Useful Testing/development commands:
   xboxdrv --help, xboxdrv --help-key, xboxdrv --help-all
   cat /proc/bus/input/devices
   ls /dev/input/by-id/
   (while the emulator is running):
   evtest /dev/input/event[1]
```

## See also
[Advanced Controller Framework](https://sinisterspatula.github.io/SuperRetropieGuides/AdvancedControlFramework)

[Controller Diagrams](https://photos.app.goo.gl/iM52fxLmjadTocyk8)

## Support Thread
No main support thread for this topic yet.

[Back to Index](https://sinisterspatula.github.io/SuperRetropieGuides/)

###### Head back to our [Facebook Group](https://www.facebook.com/groups/SuperRetroPie/)
