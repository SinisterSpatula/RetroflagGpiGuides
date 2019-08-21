![Banner Image](https://sinisterspatula.github.io/RetroflagGpiGuides/images/GuidesBanner.png)

[Back to Index](https://sinisterspatula.github.io/RetroflagGpiGuides/)

Thanks to: Bishop

Gameplay Video here: [https://youtu.be/9dqh1NZyoms](https://youtu.be/9dqh1NZyoms)

This might help improve performance: [https://youtu.be/8fX2KWw8lH4](https://youtu.be/8fX2KWw8lH4)

# Muphen64Plus Controls

### You can set up proper controls for standalone Mupen64Plus by manually editing its configuration file.

Analog stick is set to GPi D-Pad
(Start) is set to GPi (Start) 
(A) is set to GPi (B)
(B) is set to GPi (Y)
(Z) is set to GPi left trigger
(R) is set to GPi rigth trigger
(L) has no mapping (currently?)
(C Up) is set to GPi (X)
(C Down) is set to GPi (A)
(C Left) is set to GPi (Select)
(C Right) has no mapping (currently?)

* To do it:

* Open `/opt/retropie/configs/n64/InputAutoCfg.ini`

* Find "[Microsoft X-Box 360 pad]" section

* Replace this section with the code below

* Choose mupen64plus-gles2n64 to play

```shell
[Microsoft X-Box 360 pad]
plugged = True
plugin = 2
mouse = False
AnalogDeadzone = 4096,4096
AnalogPeak = 32768,32768
Mempak switch =
Rumblepak switch =
Start = button(7)
Z Trig = button(4)
; Z Trig set to L button
L Trig =
R Trig = button(5)
A Button = button(1)
; A Button set to B
B Button = button(3)
; B Button set to Y
C Button R =
C Button L = button(6)
; C Button L set to Select
C Button D = button(0)
; C Button D set to A
C Button U = button(2)
; C Button U set to X
X Axis = hat(0 Left Right)
Y Axis = hat(0 Up Down)
; Microsoft X-Box 360 pad_
```


## Support Thread
[Go here for help](https://www.facebook.com/groups/401660300458844/)

[Back to Index](https://sinisterspatula.github.io/RetroflagGpiGuides/)

###### Head back to our [Facebook Group](https://www.facebook.com/groups/401660300458844/)

