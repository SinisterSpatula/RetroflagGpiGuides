![SR Image](https://sinisterspatula.github.io/Retroflag-Gpi-Guides/images/SRimage-short.jpg)

[Back to Index](https://sinisterspatula.github.io/Retroflag-Gpi-Guides/)

# Pisnes Emulator install guide


* Go to RetroPie-Setup and manage packages,
* Remove snes9x.
* Install pisnes from source.
* Edit the configuration file: sudo nano /opt/retropie/emulators/pisnes/snes9x.cfg
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
[Ctrl+O] (save) and [Ctrl+X] (exit)

Set your SNES default emu to pisnes. Fire up some classic super nintendo action!

## Controls:
Start+Select=quit. Select+LB=load state, Select+RB=Save state.

## [Support Thread](https://www.facebook.com/groups/SuperRetroPie/permalink/2448328332120812/)

###### Head back to our [Facebook Group](https://www.facebook.com/groups/SuperRetroPie/)
