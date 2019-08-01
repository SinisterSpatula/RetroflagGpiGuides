![SR Image](https://sinisterspatula.github.io/SuperRetropieGuides/images/SRimage-short.jpg)

[Back to Index](https://sinisterspatula.github.io/SuperRetropieGuides/)

# Video Snaps conversion

 > Videos from scraping are usually in a higher resolution than necessary for pi zero/Retroflag Gpi case.  You should convert these down to a lesser resolution not only to save on file space, but to make them play smoother and load faster.

* First you need to scrape your roms using one of the available scraping tools.  I recommend only scraping a single screenshot and a single movie for each game.  Other metadata is not used, typically.  (For Retroflag Gpi case or Gameboy zero)

* [Download Axiom FFMPEG GUI app](https://github.com/MattMcManis/Axiom/releases/download/v1.7.6.0-alpha/Axiom.FFmpeg.7z)

  > The app can be extracted to a folder and used from anywhere, it is a portable app with no installation.
  
* Grab a copy of my custom_preset.ini file.

    * To download, right click on [custom_preset.ini](https://github.com/SinisterSpatula/SuperRetropieGuides/raw/master/data/Custom%20Preset.ini) and choose save link as.  Save it as custom_preset.ini
  
  > You will need to replace `UserName` with your real username, and create the Axiom UI and presets folders.  place it in: `C:\Users\UserName\AppData\Local\Axiom UI\presets`
  
* Launch axiom, set your Input directory to the location containing your input movie files, and your output directory to the location where you want to store the converted movies.  You should copy your scraped movies from your Gpi to your PC to use them as the input movie files. (Example path: `/home/pi/RetroPie/roms/mame-libretro/media/videos`)

* Once you have a batch of files ready, click the batch button on the Axiom GUI, then click the Convert button.  After a short while, your converted movies are ready in the output folder.  Place these in your movies folder on your Gpi, for the emulator core they are intended for.  Delete the old movies and copy over the new ones.  (Example path: `/home/pi/RetroPie/roms/mame-libretro/media/videos`)

## Videos Play Choppy or Stuttering

* You need to modify your audio settings in emulation station.  Press Start and go to settings, and change audio settings, and Change OMX to ALSA HW 0,0.  This is the proper setting that fixes the choppyness for me, however, it does not always work at first.  I usually have to go back to this menu and try other combinations of settings, and then finally change it all back to default but then set the ALSA HW 0,0 again.  After a few attempts, and changes and reboots, the videos start to play smoothly.  Sorry I don't know why this is the case, it's buggy.  (Hopefully it will be fixed by Retropie in a future update).  This is an older thread but I think it is related to this issue: [https://retropie.org.uk/forum/topic/17107/bug-solved-omxplayer-on-stretch-based-builds-stutters-on-composite](https://retropie.org.uk/forum/topic/17107/bug-solved-omxplayer-on-stretch-based-builds-stutters-on-composite)

## Support Thread
[Go here for help](https://www.facebook.com/groups/SuperRetroPie/permalink/2469356526684659/)

[Back to Index](https://sinisterspatula.github.io/SuperRetropieGuides/)

###### Head back to our [Facebook Group](https://www.facebook.com/groups/SuperRetroPie/)
