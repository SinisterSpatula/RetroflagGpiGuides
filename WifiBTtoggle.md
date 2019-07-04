![SR Image](https://sinisterspatula.github.io/SuperRetropieGuides/images/SRimage-short.jpg)

[Back to Index](https://sinisterspatula.github.io/SuperRetropieGuides/)

# Wifi and Bluetooth toggle menu install guide
Note: this is already included in the Super Retroboy image.

Source: [8bcraft.com](http://forum.8bcraft.com/viewtopic.php?f=2&t=1432)

* [SSH into the pi via Putty](https://www.youtube.com/watch?v=aEJoQZBSlSs) and type the following command in: `sudo apt-get install rfkill`
 > This will install the Linux-Kernel subsystem that allows you to toggle the wireless connectivities of the W
* Next up you have to [login via Winscp as root](https://www.youtube.com/watch?v=O6RRRsqG9nQ) into the pi to get the permission to copy the files from [Pi Zero W Scripts.zip](https://github.com/SinisterSpatula/SuperRetropieGuides/raw/master/data/Pi%20Zero%20W%20Scripts.zip) over to your correct pi folders.
* After you have root acces via Winscp just copy the files from Pi Zero W Scripts.zip to the correspoding folders of your pi (with one exception see note below). After you're done, just reboot your pi to make these new changes.

  > **IMPORTANT** Do not overwrite your entire gamelist.xml file with the one provided, instead you will modify your existing gamelist.xml by adding these entries to `opt/retropie/configs/all/emulationstation/gamelists/retropie/gamelist.xml` before the </gameList> tag:


```
<game>
	<path>./Bluetooth-Toggle/disable-bluetooth.sh</path>
	<name>disable-bluetooth</name>
	<desc>Disable bluetooth when not needed</desc>
	<image>/home/pi/RetroPie/retropiemenu/icons/disable-bluetooth.png</image>
</game>
<game>
	<path>./Bluetooth-Toggle/enable-bluetooth.sh</path>
	<name>enable-bluetooth</name>
	<desc>Enable bluetooth when needed</desc>
	<image>/home/pi/RetroPie/retropiemenu/icons/enable-bluetooth.png</image>
</game>
<game>
	<path>./Bluetooth-Toggle</path>
	<name>Bluetooth-Toggle</name>
	<desc>Toggle bluetooth on or off</desc>
	<image>/home/pi/RetroPie/retropiemenu/icons/Bluetooth-Toggle.png</image>
</game>
<game>
	<path>./WiFi-Toggle/disable-WIFI.sh</path>
	<name>disable-WIFI</name>
	<desc>Disable WiFi when not needed</desc>
	<image>/home/pi/RetroPie/retropiemenu/icons/disable-WIFI.png</image>
</game>
<game>
	<path>./WiFi-Toggle/enable-WIFI.sh</path>
	<name>enable-WIFI</name>
	<desc>Enable WiFi when needed</desc>
	<image>/home/pi/RetroPie/retropiemenu/icons/enable-WIFI.png</image>
</game>
<game>
	<path>./WiFi-Toggle</path>
	<name>WiFi-Toggle</name>
	<desc>Toggle WIFI on or off</desc>
	<image>/home/pi/RetroPie/retropiemenu/icons/WiFi-Toggle.png</image>
</game>
<game>
	<path>./Shutdown.sh</path>
	<name>Shutdown</name>
	<desc>Shutdown the system</desc>
	<image>/home/pi/RetroPie/retropiemenu/icons/Shutdown.png</image>
</game>
```

After rebooting go to the Retropie menu and you will find new menu entries.
  > If you are having trouble finding the new WiFi and Bluetooth toggle items in your menu, make sure you press start and go to "Other Settings" and make sure "Parse Gamelists Only" is set to OFF. (and restart emulation station, so it will parse and show them).


## Support Thread
There is no support thread for this topic, yet.

[Back to Index](https://sinisterspatula.github.io/SuperRetropieGuides/)

###### Head back to our [Facebook Group](https://www.facebook.com/groups/SuperRetroPie/)
