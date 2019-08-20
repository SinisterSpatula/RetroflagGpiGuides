![Banner Image](https://sinisterspatula.github.io/RetroflagGpiGuides/images/GuidesBanner.png)

[Back to Index](https://sinisterspatula.github.io/RetroflagGpiGuides/)

Thanks to: GioThermalHeat

# Spotify on Gpi guide

### Introduction

> Hello everyone this is how to add Spotify support for your Retropie Gpi Case. Please note that *you will need spotify premium* in order to cast yourmusic from your phone, laptop, or any platform that you have your spotify on. Any cracked or other versions of the app that support casting to devices may not work.  (This means the music plays out of your Gpi but is controlled by your other device.

Make sure you login to your pi with putty and type the following:
If you don't have putty or don't have ssh enabled please check out the GPI Case guide on how to do so.

* Installation command:  `curl -sL dtcooper.github.io/raspotify/install.sh | sh`

* `sudo alsamixer`

* Change volume: Use arrow keys to adjust, once finished press esc key.

* Make sure you change it so it is at the highest part of the bar before red (in the white range) otherise audio will overmodulate

* Edit config: `cd /etc/default/`

* `sudo nano raspotify`

> On line 4 you can change the name of your device to anything you want (I would prefer typing something as simple as 'Retroflag' or 'GPI CASE')

> On line 7 you need to change the bitrate of the sound from 160 to 320 and uncomment the line by just removing the "#" symbol. Reason why we change the bitrate is to improve sound quality.

* Save with ctrl+x, confirm with Y, and enter.

> Now you're almost done! Now we need to restart the raspotify service by typing:

* `sudo systemctl restart raspotify`

And you're done!

### Conclusion

If you don't hear anything, chances are you need to switch your audio output from HDMI to the headphone jack with this command:
amixer cset numid=3 1

* If there is stuttering in the music here are a couple reasons why

1. Your SD is overloaded with roms, backround apps, video and image scrapes etc.
1. Fixing the stuttering splash screen may help with the audio see the main page of the guide.
1. The volume of alsamixer was set too high or the bitrate of the audio quality is too low.

To connect check nearby devices, select the name you put for your gpi case, and connect. Simple! Make sure you have your volume dial on the pi up so you can hear how loud the music is and you can change simply through spotify itself. And you will now have a Alexa/Google Home like feature available in your GPI CASE!



## Support Thread
[Go here for help](https://www.facebook.com/groups/401660300458844/)

[Back to Index](https://sinisterspatula.github.io/RetroflagGpiGuides/)

###### Head back to our [Facebook Group](https://www.facebook.com/groups/401660300458844/)

