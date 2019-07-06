![SR Image](https://sinisterspatula.github.io/SuperRetropieGuides/images/SRimage-short.jpg)

[Back to Index](https://sinisterspatula.github.io/SuperRetropieGuides/)

Source: [Reddit.com](https://www.reddit.com/r/retroflag_gpi/comments/c8xtq3/solved_controls_not_working_after_a_reboot/)

# Controls Not Working after reboot

  > It used to be that on a fresh Retropie 4.4 install (after installing the GPi case patch and the safe shutdown script) I would reboot and there would be no controls. I updated with apt and now no longer have this problem. I am assuming a new kernel or library fixes this because I didn't update retropie, but only the debian packages.

* Firstly, please make an image of your SD card before you update. That way you can revert to it if the update goes wrong.

* Then upgrade with apt. I use aptitude so I did `aptitude update` and then `aptitude upgrade` (but you can probably do the apt or apt-get equivalents)

* 2 things will break after an update, but this isn't my first rodeo so I fixed both of them before rebooting post-upgrade:

  * Problem: The autologin will no longer work because the upgrade overwrites a setting.
    * Solution: This can be fixed with sudo raspi-config -> Boot Options -> Desktop/CLI -> Console Autologin.

  * Problem: The upgrade will overwrite /boot/overlays/dpi24.dtbo with the stock version.
    * Solution: Just overwrite the patch version again.

* Then you can reboot and it will all work. Even the controls. Then you can reboot again and it will still be working 🎉

  > Note: I realize 4.5 is out. I am not upgrading to that yet on this case. I'll let others jump on that landmine first :)


## Support Thread
There is no support thread for this topic, yet.

[Back to Index](https://sinisterspatula.github.io/SuperRetropieGuides/)

###### Head back to our [Facebook Group](https://www.facebook.com/groups/SuperRetroPie/)
