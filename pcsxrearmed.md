![SR Image](https://sinisterspatula.github.io/SuperRetropieGuides/images/SRimage-short.jpg)

[Back to Index](https://sinisterspatula.github.io/SuperRetropieGuides/)

Source: [retropie.org.uk](https://retropie.org.uk/forum/post/162172)

# PCSX-Rearmed Crash fix

> PCSX-Rearmed causes a crash for some (but not all) pi zero's.  You can use a patched version if you change your scriptmodule to use this version instead, and then Install from Source.

* The only thing you need to do is to update git repository line in RetroPie-Setup/scriptmodules/emulators/pcsx-rearmed.sh

```
sudo nano ~/RetroPie-Setup/scriptmodules/emulators/pcsx-rearmed.sh
```

* Change it from:

```
gitPullOrClone "$md_build" https://github.com/notaz/pcsx_rearmed.git
```

* Change it to:

```
gitPullOrClone "$md_build" https://github.com/timemaster5/pcsx_rearmed.git saio
```

* [Control+O] (to save) and [Control+X] (to exit)

* Then run update pcsx-rearmed from source in retropie-setup script

## Support Thread
[Go Here for help](https://www.facebook.com/groups/SuperRetroPie/permalink/2457585517861760/)

[Back to Index](https://sinisterspatula.github.io/SuperRetropieGuides/)

###### Head back to our [Facebook Group](https://www.facebook.com/groups/SuperRetroPie/)
