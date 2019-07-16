![SR Image](https://sinisterspatula.github.io/SuperRetropieGuides/images/SRimage-short.jpg)

[Back to Index](https://sinisterspatula.github.io/SuperRetropieGuides/)

Source: [reddit.com](https://www.reddit.com/r/retroflag_gpi/comments/ccmgp1/pcsxrearmed_corrupting_the_filesystem/etveksl/)

# PCSX-Rearmed Crash fix

> PCSX-Rearmed causes a crash for some (but not all) pi zero's.  You can manually set the video resolution to 320x240 to fix this.  And maybe even possibly boost the performance some also, from having it be in a lower resolution.

* Please try using the stock/standard Un-patched PCSX-rearmed, and apply the change as suggested in this reddit comment:

https://www.reddit.com/r/retroflag_gpi/comments/ccmgp1/pcsxrearmed_corrupting_the_filesystem/etveksl/

* You can get to the runcommand menu by spamming start or select, if you have trouble reaching it with the A button.

------------------

## To Change your PCSX-rearmed back to the original 

> My appologies, if you followed this guide earlier and changed your git command, you should follow the below to change it back to the 
 default:

```
sudo nano ~/RetroPie-Setup/scriptmodules/emulators/pcsx-rearmed.sh	
```	


 * Change it from:

```
gitPullOrClone "$md_build" https://github.com/timemaster5/pcsx_rearmed.git saio
```	

 * Change it back to:	

```	
gitPullOrClone "$md_build" https://github.com/notaz/pcsx_rearmed.git
```	

 * [Control+O] (to save) and [Control+X] (to exit)	

 * Then run update pcsx-rearmed from source in retropie-setup script

## Support Thread
[Go Here for help](https://www.facebook.com/groups/SuperRetroPie/permalink/2457585517861760/)

[Back to Index](https://sinisterspatula.github.io/SuperRetropieGuides/)

###### Head back to our [Facebook Group](https://www.facebook.com/groups/SuperRetroPie/)
