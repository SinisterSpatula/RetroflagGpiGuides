![SR Image](https://sinisterspatula.github.io/SuperRetropieGuides/images/SRimage-short.jpg)

[Back to Index](https://sinisterspatula.github.io/SuperRetropieGuides/)

# Stereo Downsample Fix guide

  > If your Retroflag Gpi is missing some sounds (you only hear sounds destined for the Right speaker of the stereo audio), it may be due to the fact that it's outputing audio in a stereo format, but only has a mono speaker.  This fix will downsample the stereo audio into mono audio.

  * [SSH into your Pi](https://www.youtube.com/watch?v=aEJoQZBSlSs)
  * Enter the command `sudo nano /etc/asound.conf`

  * Paste the following code:

```
# convert stereo to mono RIGHT output
 
pcm.monocard{
  slave.pcm "hw:0"
  slave.channels 2
  type route
  ttable {
    # Copy both input channels to output channel 1 (Right).
    0.1 1
    1.1 1
    # Copy both input channels to output channel 0 (Left).
    0.0 1
    1.0 1
  }
}
 
pcm.!default monocard
```

  * [Ctrl+O] (to save) [Enter] and [Ctrl+X] (to exit)
  * Use Command `sudo reboot` to restart

## Support Thread
There is no main support thread for this topic, yet.

[Back to Index](https://sinisterspatula.github.io/SuperRetropieGuides/)

###### Head back to our [Facebook Group](https://www.facebook.com/groups/SuperRetroPie/)
