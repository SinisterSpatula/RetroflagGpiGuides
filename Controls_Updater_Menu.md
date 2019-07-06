![SR Image](https://sinisterspatula.github.io/SuperRetropieGuides/images/SRimage-short.jpg)

[Back to Index](https://sinisterspatula.github.io/SuperRetropieGuides/)

  > #### **IMPORTANT please do not perform updates other than Controls Menu Update.  If you choose to get system updates things may break and it is strongly recommended that you make a backup.**

# Advanced Controller Framework
## Controls_Updater_Menu install guide

Our new SD card image has arrived!  It's a much easier way to go.  This process will still be an option for those who want to add it to an existing image, but by far the easier way is going to be the SuperRetropie [RetroFlag GPi Pre-Made Image](https://www.facebook.com/notes/super-retropie/retroflag-gpi-pre-made-image/2425992267687752/)

Follow this guide to manually add our Controls_Updater_Menu to an existing image.

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
* Then reconnect to the SSH session again.  Paste the following:
```
cd && cd RetroPie/retropiemenu && wget -N https://raw.githubusercontent.com/SinisterSpatula/Gpi/master/control_updater_menu.sh && sudo chmod 775 control_updater_menu.sh
```
* Now you need to reboot back into emulationstation and select the "controls_updater_menu" from the retropie menu and select it (launch it).
* Then pick "1) Update Controls".
  * This will be the way you update the controller scripts as well.  Just launch it again to get the latest changes.
  * If you are having trouble finding the Controls_Updater_Menu in your menu, make sure you press start and go to "Other Settings" and make sure "Parse Gamelists Only" is set to OFF. (and restart emulation station, so it will parse and show it).
  
  ![ControlsUpdateMenuImg](https://sinisterspatula.github.io/SuperRetropieGuides/images/ControlsUpdateMenuImg.PNG)  

## Things to keep in mind:
If you have previously setup your key bindings in one of the standalone cores, it is helpful to reset them back to default settings (usually by deleting it's config file, check the [retropie wiki](https://github.com/RetroPie/RetroPie-Setup/wiki/) for the core in question to find the config file location).  Our controller scripts  are based on default bindings.  If you want to check if a script has been written for a core, [check the script here.](https://github.com/SinisterSpatula/Gpi/blob/master/runcommand-onstart.sh)  Controller Diagrams are [located here](https://photos.app.goo.gl/iM52fxLmjadTocyk8)

* If you have suggestions for improving these control maps, please add your comments or questions.

## Updating your Controls_Menu_Updater itself

  > Newer versions of the Controls_Updater_Menu will have a self-update function, and have additional enhancements like saftey checks before updating (making sure there is wifi connection before deleting the old versions and grabbing new versions).

* [Connect to your GPi with SSH (Putty).](https://www.youtube.com/watch?v=aEJoQZBSlSs)
* Log in (username pi and pw raspberry)
  * you should be at the pi@retropie:~ $
command prompt.
* Paste the following:
```
cd && cd RetroPie/retropiemenu && wget -N https://raw.githubusercontent.com/SinisterSpatula/Gpi/master/control_updater_menu.sh && sudo chmod 775 control_updater_menu.sh
```


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
