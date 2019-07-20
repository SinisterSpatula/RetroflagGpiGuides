![SR Image](https://sinisterspatula.github.io/SuperRetropieGuides/images/SRimage-short.jpg)

[Back to Index](https://sinisterspatula.github.io/SuperRetropieGuides/)

# Preventing overwriting of Gpi case patches

Source: [reddit.com](https://www.reddit.com/r/retroflag_gpi/comments/cemchi/how_to_guard_the_patch_from_being_overwritten/)

 > Rename overlays files in /boot/overlays/:

* dpi24.dtbo to dpi24-gpi.dtbo

* pwm-audio-pi-zero.dtbo to pwm-audio-pi-zero-gpi.dtbo

 > Edit config.txt file:

```
dtoverlay=dpi24-gpi
dtoverlay=pwm-audio-pi-zero-gpi
```

* instead of:

```
dtoverlay=dpi24
dtoverlay=pwm-audio-pi-zero
```


 > During update GPi patch will not be overwritten.


## Support Thread
There is no support thread for this topic, yet.

[Back to Index](https://sinisterspatula.github.io/SuperRetropieGuides/)

###### Head back to our [Facebook Group](https://www.facebook.com/groups/SuperRetroPie/)
