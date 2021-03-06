![Banner Image](https://sinisterspatula.github.io/RetroflagGpiGuides/images/GuidesBanner.png)

[Back to Index](https://sinisterspatula.github.io/RetroflagGpiGuides/)


# Pisnes Emulator install guide


* Go to RetroPie-Setup and manage packages.
* Remove snes9x.
* Install pisnes from source.
* [Connect to your GPi using SSH.](https://www.youtube.com/watch?v=aEJoQZBSlSs)
* Edit the configuration file: `sudo nano /opt/retropie/configs/snes/snes9x.cfg`
  * (edit the joystick section to match):

```
[Joystick]
A_1=0
B_1=1
X_1=2
Y_1=3
L_1=4
R_1=5
START_1=7
SELECT_1=6
```
[Ctrl+O] (to save) [Enter] and [Ctrl+X] (to exit)

Set your SNES default emulator to pisnes. Fire up some classic super nintendo action!

Some folks have had to change these bindings for some odd reason, so you may want to double check your button numbers using jstest like the config file will tell you when you look inside it.
## Other settings:
Change "MaintainAspectRatio=1" to your preference (If you want full screen set it to 0).

Per blipblopbop the pisnes developer:
> I'd also recommend setting "InterpolatedSound=1" to improve the sound quality, it has minimal performance impact on the PiZero.

## Controls:
Start+Select=quit. Select+LB=load state, Select+RB=Save state.

## Support Thread
[Go here for help](https://www.facebook.com/groups/401660300458844/)

[Back to Index](https://sinisterspatula.github.io/RetroflagGpiGuides/)

###### Head back to our [Facebook Group](https://www.facebook.com/groups/401660300458844/)

