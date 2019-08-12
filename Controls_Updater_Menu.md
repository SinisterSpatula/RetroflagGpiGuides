![Banner Image](https://sinisterspatula.github.io/RetroflagGpiGuides/images/GuidesBanner.png)

[Back to Index](https://sinisterspatula.github.io/RetroflagGpiGuides/)


# Advanced Controller Framework
## Controls_Updater_Menu install guide

Follow this guide to manually add our Controllertools/Controls_Updater_Menu to an existing image.

* [Connect to your GPi with SSH (Putty).](https://www.youtube.com/watch?v=aEJoQZBSlSs)
* Log in (username pi and pw raspberry)
  * you should be at the pi@retropie:~ $
command prompt.

* pi@retropie:~ $  sudo ./RetroPie-Setup/retropie_setup.sh [enter]
* go to manage packages, driver, xboxdrv, install from source.
  * It takes 1 hour 15 mins to compile.

* Exit the setup menu.

## Install the Controls Updater Menu

```shell
cd && cd RetroPie/retropiemenu && wget -O control_updater_menu.sh  https://raw.githubusercontent.com/SinisterSpatula/Gpi/master/control_updater_menu.sh && sudo chmod 775 control_updater_menu.sh
```

* Then run this command

```shell
 sudo /home/pi/RetroPie/retropiemenu/control_updater_menu.sh
```

* choose Update Controls Framework, then exit.

* Retart Emulationstation

### Done.

### Switch the D-pad mode of the Gpi case (if you desire, you don't need to change it, this is just informational):

The Gpi has a hidden option to change the D-PAD mode. To switch to direct input mode, press SELECT+DPAD LEFT for 5 seconds. You will know it worked when the LED flashes. If you need to revert back to facotry D-pad mode: To switch to hat mode (factory) press SELECT+DPAD UP for 5 seconds.  It does not matter which mode your d-pad is in for these mappings, they now work with both modes!

## Future updates

You can get future updates just by doing Option 1 (Update Controls) and option 3 (Update this menu).

  ![ControlsUpdateMenuImg](https://sinisterspatula.github.io/RetroflagGpiGuides/images/ControlsUpdateMenuImg.PNG)  

## Things to keep in mind:
If you have previously setup your key bindings in one of the standalone cores, it is helpful to reset them back to default settings (usually by deleting it's config file, check the [retropie wiki](https://github.com/RetroPie/RetroPie-Setup/wiki/) for the core in question to find the config file location).  Our controller scripts  are based on default bindings.  If you want to check if a script has been written for a core, [check the script here.](https://github.com/SinisterSpatula/Gpi2/blob/master/xboxdrvstart.sh)  Controller Diagrams are [located here](https://photos.app.goo.gl/iM52fxLmjadTocyk8)

* If you have suggestions for improving these control maps, please [add your comments or questions here.](https://github.com/SinisterSpatula/Gpi2/issues/2)



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
[Advanced Controller Framework](https://sinisterspatula.github.io/RetroflagGpiGuides/AdvancedControlFramework)

[Controller Diagrams](https://photos.app.goo.gl/iM52fxLmjadTocyk8)

## Support Thread
[Go here for help](https://www.facebook.com/groups/401660300458844/)

[Back to Index](https://sinisterspatula.github.io/RetroflagGpiGuides/)

###### Head back to our [Facebook Group](https://www.facebook.com/groups/401660300458844/)

