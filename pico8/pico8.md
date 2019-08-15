![Banner Image](https://sinisterspatula.github.io/RetroflagGpiGuides/images/GuidesBanner.png)

[Back to Index](https://sinisterspatula.github.io/RetroflagGpiGuides/)

Thanks to: [John Haasl](https://www.facebook.com/jhaasl)

# How to Add Pico-8 To RetroPie

## Introduction

The Pico-8 Fantasy Console is a great way to play, share and even create 8-bit style games that happen to run perfectly on the GPi Case!  Below are the steps I went through in order to get this setup and configured on my GPi Case.  

For this you will probably need some basic understanding of UNIX and how to navigate and run commands.  Doing this is all up to you and I’m not responsible if something goes awry or messes up your device.  Again, these were my steps to getting this installed, UNIX guru’s or a chimp at the zoo might have a better, more efficient way to do this!

If you have any comments or suggestions please pass them along to me on my social media pages:

[![Twitter](https://SinisterSpatula.github.io/RetroflagGpiGuides/images/Twitter.png)](https://twitter.com/MicroByter)
[![Instagram](https://SinisterSpatula.github.io/RetroflagGpiGuides/images/Instagram.png)](https://www.instagram.com/microbyter/)

-----------------------------------------------------

## Recommended Software and tools:

[Pico-8 Software](https://www.lexaloffle.com/pico-8.php)
[FTP Transfer software](https://winscp.net/eng/download.php) to connect to the Raspberry Pi - WinSCP
[Terminal SSH software - PuTTY](https://www.chiark.greenend.org.uk/~sgtatham/putty/latest.html)
Simple DirectMedia Layer (SDL) Source - [https://www.libsdl.org/download-2.0.php](https://www.libsdl.org/download-2.0.php)  (SDL2-2.0.10.zip at the time this was written)

----------------------------------------

<a href="https://www.lexaloffle.com/pico-8.php"><img align="right" src="https://sinisterspatula.github.io/RetroflagGpiGuides/pico8/pic1.png"/></a>

## Install PICO-8:

1. [Purchase the Pico-8 Fantasy Console](https://www.lexaloffle.com/pico-8.php)
1. (FTP) Download the Raspberry Pi version and transfer the ’pico-8’ folder to the RetroPie home directory on your Raspberry Pi. You should now have a folder path that looks like `/home/pi/pico-8`
1. (FTP or SSH) create a dummy shell script called ‘Start PICO-8.sh’ and save it to the `/home/pi/pico-8` directory.  This will be the menu item you will see in RetroPie if you setup the theme to launch Pico-8 from the menu.
1. (SSH) run the following command to install  [wiringPI](http://wiringpi.com).  Pico-8 needs this to interface with the GPi Case GPIO setup.  `sudo apt-get install wiringpi`
1. (SSH) We need to now setup the button controls for Pico-8 since they might not be mapped correctly as defaulted.
1. (FTP) Download the SDL Source .zip file and extract the folder contents to the `/home/pi/pico-8`.  You should have a new subfolder that looks like `/home/pi/pico-8/SDL2-2.0.10`.  If this guide is being used in the future, the path will look like whatever the latest SDL version is.
1. (SSH) Execute the following commands: 
    ```shell
    cd /home/pi/pico-8/SDL2-2.0.10/test
    sudo chmod 777 configure
    ./configure
    make controllermap
    ```
1. Run the following controller map command: <img align="right" src="https://sinisterspatula.github.io/RetroflagGpiGuides/pico8/pic2.jpg" style="padding: 10px; float: right;">
    `./controllermap 0 >>  /home/pi/pico-8/sdl_controllers.txt`
    > and follow the onscreen directions on your GPI Case, you should see an image like this on your screen.  Push the appropriate button that matches the green highlighted one on your screen. For buttons you don’t have or that cannot be mapped (e.g. left/right analogue sticks or triggers), just push B.  You should be able to map the B, A, Y, X, D-pad, L/R shoulder, start and select buttons.
1. This should create a new file called ‘sdl_controllers.txt’ under the `/home/pi/pico-8/` directory.
1. (SSH) Run the following command to remove the SDL folders.  Remember, your SDL folder might be a different version so substitute the SDL folder name for the name in your pico-8 directory.
    `rm -rf ~/pico-8/SDL2-2.0.10a`
1. After going through the steps above, you should be left with a pico-8 folder that looks like the following:

<img align="left" src="https://sinisterspatula.github.io/RetroflagGpiGuides/pico8/pic3.png" style="padding: 10px; float: left;">
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>

-------------------------------------

## Add PICO-8 to the Emulationstation menu:

1. (SSH) Run this command and add an entry for the Pico-8 system to be recognized by Emulationstation: 
```shell
sudo nano -w /opt/retropie/configs/all/emulationstation/es_systems.cfg
```
1. Copy/Paste the following lines to the file.  This can be placed anywhere in the file where you see other similar system entries.  When done, press ctrl+x and answer ‘y’ when prompted to ‘Save modified buffer’.
The entry is setup to add a menu item called ‘Pico-8’ to the main Emulationstation menu.  It’s looking for a .sh extension which is why we created the ‘Start PICO-8.sh’ as a dummy file to kick off the command which runs Pico-8!
    ```xml
    <system>

      <name>pico8</name>

      <fullname>PICO-8</fullname>

      <path>/home/pi/pico-8</path>

      <extension>.sh .SH</extension>

      <command>/opt/retropie/supplementary/runcommand/runcommand.sh 0 "/home/pi/pico-8/pico8 -splore"</command>

      <platform>pico8</platform>

      <theme>pico8</theme>

    </system>
    ```
1. You should have something that looks similar to the following: <img align="right" src="https://sinisterspatula.github.io/RetroflagGpiGuides/pico8/pic4.png" style="padding: 10px; float: right;">
1. (FTP) This part is harder.  Depending on which theme you are using, you will need to add the graphic and any configuration file needed by the theme.  The easiest way I found to do this is to (1) find the theme and then (2) copy a system folder that already exists and rename the copy to be ‘pico8’ and then (3) replace whatever images that are used with the them with Pico-8 images.  

    > For my example, I’m using the Super-Retroboy theme.

1. Themes can be found in a few locations.  Try looking for your theme in the following:
    * `/opt/retropie/configs/all/emulationstation/themes`
    * `/etc/emulationstation/themes`
1. Once you find your theme, copy an existing system folder and name it ‘pico8’: <img align="right" src="https://sinisterspatula.github.io/RetroflagGpiGuides/pico8/pic5.png" style="padding: 10px; float: right;">
1. For the Super-Retroboy theme, the only thing it uses is a custom ‘system.png’ image for the logo you see on the main Emulationstation menu.  If you are using that theme, here is the image I used for mine.  [Save this image](https://github.com/KALEL1981/es-theme-Super-Retroboy/raw/master/pico8/system.png) as ‘system.png’ and copy it to the `/opt/retropie/configs/all/emulationstation/themes/Super-Retroboy/pico8` folder. (This image is included in the latest version of the theme already, you can also just update the theme)
1. Reboot your GPi Case and you should see Pico-8 on the menu.  Select it and then select Start PICO-8 to run it! <img align="right" src="https://sinisterspatula.github.io/RetroflagGpiGuides/pico8/pic6.jpg" style="padding: 10px; float: right;">

---------------------------------------------

## Additional Resources

[lexaloffle.com Forum Post](https://www.lexaloffle.com/bbs/?tid=3935)

[Lexaloffle.com](https://www.lexaloffle.com/)

## Support Thread
[Go here for help](https://www.facebook.com/groups/401660300458844/permalink/433343923957148/)

[Back to Index](https://sinisterspatula.github.io/RetroflagGpiGuides/)

###### Head back to our [Facebook Group](https://www.facebook.com/groups/401660300458844/)
