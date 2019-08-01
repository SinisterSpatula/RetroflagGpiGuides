![SR Image](https://sinisterspatula.github.io/SuperRetropieGuides/images/SRimage-short.jpg)

[Back to Index](https://sinisterspatula.github.io/SuperRetropieGuides/)

# Video Snaps conversion

* First you need to scrape your roms using one of the available scraping tools.  I recommend only scraping a single screenshot and a single movie for each game.  Other metadata is not used, typically.  (For Retroflag Gpi case or Gameboy zero)

* [Download Axiom FFMPEG GUI app](https://github.com/MattMcManis/Axiom/releases/download/v1.7.6.0-alpha/Axiom.FFmpeg.7z)

  > The app can be extracted to a folder and used from anywhere, it is a portable app with no installation.
  
* Grab a copy of my custom_preset.ini file.

    * To download, right click on [custom_preset.ini](https://github.com/SinisterSpatula/SuperRetropieGuides/raw/master/data/Custom%20Preset.ini) and choose save link as.  Save it as custom_preset.ini
  
  > You will need to replace `UserName` with your real username, and create the Axiom UI and presets folders.  place it in: `C:\Users\UserName\AppData\Local\Axiom UI\presets`
  
* Launch axiom, set your Input directory to the location containing your input movie files, and your output directory to the location where you want to store the converted movies.

* Once you have a batch of files ready, click the batch button on the Axiom GUI, then click the Convert button.  After a short while, your converted movies are ready in the output folder.  Please these in your movies folder on your Gpi, for the emulator core they are intended for.  Delete the old movies and copy over the new ones.  (Example path: `/home/pi/RetroPie/roms/mame-libretro/media/videos`)



## Support Thread
[Go here for help](https://www.facebook.com/groups/SuperRetroPie/permalink/2469356526684659/)

[Back to Index](https://sinisterspatula.github.io/SuperRetropieGuides/)

###### Head back to our [Facebook Group](https://www.facebook.com/groups/SuperRetroPie/)
