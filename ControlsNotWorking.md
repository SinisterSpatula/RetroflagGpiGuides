![SR Image](https://sinisterspatula.github.io/SuperRetropieGuides/images/SRimage-short.jpg)

[Back to Index](https://sinisterspatula.github.io/SuperRetropieGuides/)

# My controls are not working

## Reset Emulation Station Controller inputs

  * [Establish an SSH connection](https://github.com/retropie/retropie-setup/wiki/ssh)

  * run `sudo ~/RetroPie-Setup/retropie_setup.sh` 
  
  * Go to Emulation Station configuration via

      * Manage Packages -> Core Packages -> emulationstation -> Configuration or Configuration / Tools -> emulationstation and choose the option to Clear/Reset Emulation Station input configuration


## Is Xboxdrv installed?
  
  * First, let's check that xboxdrv is installed.
  
  * Go to RetroPie-Setup, then Manage Packages, then Driver.
  
  * Verify that next to xboxdrv that you see "(Installed)".
  
  * If it does not say "(Installed)" then please install it.

## Are you on the newest controller framework?

  > If you are unsure if your controller framework is on the newest one, the easiest thing to do is to just install it again using these steps.  After performing this, you can be sure that you have the newest framework and it is working properly.
 
 * [Connect to your GPi using SSH.](https://www.youtube.com/watch?v=aEJoQZBSlSs)
 
 * Run this command:

```shell
cd && cd RetroPie/retropiemenu && wget -O control_updater_menu.sh  https://raw.githubusercontent.com/SinisterSpatula/Gpi/master/control_updater_menu.sh && sudo chmod 775 control_updater_menu.sh
```

* Reboot emulation station.

* Look in the retropie menu (where you normally find controllertools/Control_updater_menu) and run the control_updater_menu (old one) that I just had you re-install from above.

* Now you should see "Update Control Framework" please do this, and it will overwirte the control framework files and make sure everything is good with the new ones.  You will need to restart emulation station.  Now your framework and it's files should be up to date.


## Are your Controller Framework files updated?

* If your control_updater_menu is found under "Controllertools" of the retropie menu, that means you are running the latest framework.  But you can also do the "Update Controls" option number 1 to ensure you have the latest control maps.  Just Go into Controllertools, and launch Control_updater_menu and do option 1: Update Controls.
  

## Does the emulator use default key bindings?

* Controller Framework relies on your emulator to be using the stock standard default key bindings.  If you have changed any of them, then that could be why you're having trouble.  You will need to delete the emulator's configuration file in order to reset it.  Each emulator keeps it's configuration file in a different location.  [Please refer to the Retropie Wiki](https://github.com/RetroPie/RetroPie-Setup/wiki) and read the entry of the emulator you are having troulbe with.  It will show you the information about where the config file can be located.  You just need to delete that file and that should clear and remove your custom key bindings.  In the case of Mame: Mame4all, advmame-0.94, etc.  You will also need to remove any custom key bindings that you did on a per game basis.  So look for those config files as well, and remove them (they should be next to the main/default config file for the emulator).
  

## HE-MAN OpenBOR - did you copy default.cfg to HE-MAN.cfg

* For HE-MAN on OpenBOR, the emulator will load the config file that is named the same as the game.  So when you boot up HE-MAN it is loading HE-MAN.cfg for it's controls.  This means, you need to have a working default.cfg but then you also need to copy it and name it HE-MAN.cfg.  You can use the below command to do this:
 
```
sudo cp /opt/retropie/configs/ports/openbor/Saves/default.cfg /opt/retropie/configs/ports/openbor/Saves/HE-MAN.cfg
```
  






## Support Thread
[Go here for help](https://www.facebook.com/groups/SuperRetroPie/permalink/2456196434667335/)

[Back to Index](https://sinisterspatula.github.io/SuperRetropieGuides/)

###### Head back to our [Facebook Group](https://www.facebook.com/groups/SuperRetroPie/)
