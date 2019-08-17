![Banner Image](https://sinisterspatula.github.io/RetroflagGpiGuides/images/GuidesBanner.png)

[Back to Index](https://sinisterspatula.github.io/RetroflagGpiGuides/)

Thanks to: crcerror and Quicksilver

source: [https://www.reddit.com/](https://www.reddit.com/r/retroflag_gpi/comments/co3fm2/gpi_safe_shutdown_script_not_saving_metadata/)

source: [https://github.com/RetroFlag/retroflag-picase](https://github.com/RetroFlag/retroflag-picase)

* Turn switch "SAFE SHUTDOWN" to ON. (located behind batteries)

## For RetroPie:

* connect to your Gpi with ssh

* In the terminal, type the one-line command below(Case sensitive):

```
wget -O - "https://raw.githubusercontent.com/RetroFlag/retroflag-picase/master/install_gpi.sh" | sudo bash
```

* after reboot, do these additional changes to enhace the shutdown scripts for an even more elegant shutdown:

> For those who are interested, I have adapted crcerror's awesome shutdown script to work with the GPi case. This is a much more elegant way of implementing safe shutdown as it will cleanly exit any emulator first and then shutdown without exiting to the terminal. (all credit goes to crcerror)

1. Run this command: 
  ```shell
  wget -O /opt/RetroFlag/multi_switch.sh "https://raw.githubusercontent.com/crcerror/retroflag-picase/master/multi_switch.sh"
  ```
1. Edit `SafeShutdown.py` located at `/opt/RetroFlag/` and change:
  ```shell
  os.system("sudo killall emulationstation && sleep 5s && sudo shutdown -h now")
  ```
  -to-
  ```shell
  os.system("bash /opt/RetroFlag/multi_switch.sh --es-poweroff")
  ```


## For Recalbox

* Make sure internet connected.

* Make sure keyboard connected.

* Press F4 first. And then press ALT-F2 enter termial.

* Or connect to your Gpi with ssh

* User: root Password: recalboxroot

* In the terminal, type the one-line command below(Case sensitive):

```
wget -O - "https://raw.githubusercontent.com/RetroFlag/retroflag-picase/master/recalbox_install_gpi.sh" | bash
```


## Support Thread
[Go here for help](https://www.facebook.com/groups/401660300458844/)

[Back to Index](https://sinisterspatula.github.io/RetroflagGpiGuides/)

###### Head back to our [Facebook Group](https://www.facebook.com/groups/401660300458844/)

