![SR Image](https://sinisterspatula.github.io/SuperRetropieGuides/images/SRimage-short.jpg)

[Back to Index](https://sinisterspatula.github.io/SuperRetropieGuides/)

# Daphne video conversion guide

Daphne videos are in a resolution, and Bitrate that is too heavy for the pie zero framebuffer to play smoothly.  We need to optimize them to a smaller video file.  This can be solved by re-encoding the videos (.m2v).  All you need is a copy of the laserdisc videos (m2v format) to begin converting it to a better format for GPi/Pie zero.  [Watch this video for how to get rolling with Daphne.](https://www.youtube.com/watch?v=WKkkwk74Arc)  Once you have your source files, follow the below in order to convert them.  These instructions assume that you are using windows.  Mac instructions, or a process to do the conversion inside of the GPi itself may come later.

Before we get started converting the file, you need to know the frames per second of the original file.  This matters because we have to match the framerate of the original movie exactly.  Daphne relies on precise locations within the video, down to the frame number.  In order to find out the frames per second of your source file, I recommend [installing Media Info.](https://mediaarea.net/en/MediaInfo)  After installing Media info, simply right click your original.m2v (ace.m2v for example) and choose mediainfo.  Look at the section labeled "First video stream" and look for the FPS number.  It might say: 29.970 or 29.976 or 23.976 whatever that value is, we will be using it later on, keep it handy.
On windows, make a folder on your C:\ drive called ffmpeg.
Download ffmpeg (either version, win64, static).
Extract the ffmpeg files - what we want is the ffmpeg.exe from the bin folder.  Place it in the folder C:\ffmpeg\ffmpeg.exe
Place the first video to be converted into this folder (example: C:\ffmpeg\ace.m2v) and rename it to: C:\ffmpeg\original.m2v
Open a dos command prompt and navigate to the folder: cd C:\ffmpeg\
now run this command (REPLACE FPS with the Frames per second you got from mediainfo or the resulting file not have the correct timing and will play wrong in Daphne):

```
ffmpeg -loglevel fatal -stats -i original.m2v -codec:v mpeg2video -an -s 320x240 -r FPS -b:v 3000k -maxrate 4000k -g 18 -bf 2 output.m2v
```

Now you have the output.m2v file, you can rename it to match the original name (example: ace.m2v) and this file is ready to be used for daphne emulator, along with the original ogg file and other necessary files.  You should follow other existing guides on how to form the proper file structure, this guide is only about re-encoding the movie file.  This process should work for each laserdisc movie (.m2v) you need to convert, but remember to set your FPS value properly each time.  You can experiment with the -b:v 3000k -maxrate 4000k values (bitrate values) which will result in a bigger file or smaller file and may be easier or harder for the piezero to playback.


## Support Thread
There is no main thread for this topic yet.

[Back to Index](https://sinisterspatula.github.io/SuperRetropieGuides/)

###### Head back to our [Facebook Group](https://www.facebook.com/groups/SuperRetroPie/)
