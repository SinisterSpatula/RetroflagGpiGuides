![Banner Image](https://sinisterspatula.github.io/RetroflagGpiGuides/images/GuidesBanner.png)

[Back to Index](https://sinisterspatula.github.io/RetroflagGpiGuides/)


# Pegasus Front End guide

What is Pegasus?

## Introduction

Pegasus is a new front end that is being actively devloped and is compatible with Retropie.  You can install and update it from retropie setup.  There are not much theme's made for small screen but we are developing one, based off gameOS, modified to fit the Gpi small screen.  Currently it has a beautiful interface, and we are adding more features to make it even better.  Pegasus is currently in Alpha release so there will be some quirks and maybe bugs.  Don't let that stop you from experiencing what it can offer!  It is not replacing or removing retropie, it is 100% retropie!  Just with a new interface and theme system.

## Safe Shutdown

You will need to modify the safe shutdown script to terminate Pegasus instead of Emulationstation.  If you wish you could modify it to terminate both, and use both, there is also a front-end-chooser tool which is mentioined at [pegasus-frontend.org](https://pegasus-frontend.org/docs/user-guide/platform-retropie/)  If you have previously followed the [safe shutdown install guide](https://sinisterspatula.github.io/RetroflagGpiGuides/SafeShutdown) you'll just need to edit the `/opt/RetroFlag/multi_switch.sh` script to shutdown pegasus instead of emulationstation.

```shell
sudo nano /opt/RetroFlag/multi_switch.sh
```

I just modified this section like so (perhaps this can be improved in the near future):

```shell
# Emulationstation currently running?
# If yes return PID from ES binary
# due caller funtion
function check_esrun() {
    local ES_PID="$(pgrep -f "/opt/retropie/supplementary/.*/pegasus-fe([^.]|$)")"
    echo $ES_PID
}
```

It should now seekout and shutdown pegasus when you flick your power switch off.


## Scraping for pegasus

Currently the easiest way to scrape your media is to use skraper.net for windows.  Set it up to scrape for Screenshot, fanart, video, wheel, and Box2dfront.  In the settings for each, make sure they are setup as follows:

* Folder name: `box2dfront` will hold Box Front art.
* Folder name: `fanart` will hold fan art.
* Folder name: `screenshot` will hold screenshots.
* Folder name: `videos` will hold videos.
* Folder name: `wheel` will hold wheel images.
* Folder name: `tile` will hold "Steam tile" composite images (screenshot with wheel art overlayed on top) similar to steam.

> If using skyscraper instead, for best results, for the game grid art, you should have it generate a composite of the wheel art logo on top of the screenshot picture, and the composite image should be 168x82 pixels large, and stored in the tile folder (in lieu of the wheel art.)  This way you get a "Steam tile" presentation of your games.  More info on how to do this - coming soon.  You'll also want to set the wheel art cropping inside of the theme settings apropriately. Here's a demo of art compositing: [https://youtu.be/TIDD8EFSz50](https://youtu.be/TIDD8EFSz50) tiles are not yet setup in the theme, for now you can place them in the wheel folder until we have tiles supported.

> Make sure to set skraper to resize your images to 160x120 (but keep aspect ratio, so only set either hight limit or width limit, not both!).

Go ahead and Scrape (using Retropie as your system of choice so that we get a gamelist.xml in each games folder)!

## Editing your gamelist.xml

Once skraper is finished, you will need to edit the resulting gamelist.xml for use with Pegasus.  I recommend [downloading Microsoft Visual Studio Code](https://code.visualstudio.com/download) (just a fancy text editor).  Use it to remove all of the image tags from your gamelist.xml:

```xml
    <image>./media/images/Frogger (USA) (Rev B).png</image>
    <thumbnail>./media/wheel/Frogger (USA) (Rev B).png</thumbnail>
    <video>./media/videos/Frogger (USA) (Rev B).mp4</video>
```

* Highlight `<image>` and hit Ctrl+Shift+L (Select All Occurances).
* then hit Ctrl+L (Select all lines)
* then hit Ctrl+Shift+K (Delete lines)
* repeat the steps again for `<thumbnail>` and `<video>` also.  Now you should have them all removed, for all games.
* save the edited gamelist.xml and keep it in it's normal place next to the games.

Now that you have your media folders named correctly and have removed the image tags from your gamelist.xml, pegasus will do a good job at locating the images on it's own, and the gamelist.xml only serves to provide the meta data about the games (description, etc).

> Alternatively, you could use [skyscraper for linux](https://github.com/muldjord/skyscraper) which now has built in support for Pegasus!

## Install Theme

Now that you have scraped your games for meta data and media, and pegasus installed, and safe shutdown configured, let's install the GameOS modified theme:

```shell
cd ~/.config/pegasus-frontend/themes/ && git clone https://github.com/SinisterSpatula/gameOS.git --branch master --depth 1
```

## What else do I need to know?

You should also re-encode your scraped video files to reduce their size and so they will play better.  Currently there's a bug with OMX player so we have to use software video playback, so it's crucial that your video's be optimized.  Follow this [Video Snaps Conversion Guide](https://sinisterspatula.github.io/RetroflagGpiGuides/snapsconversion)

* To access the built in settings screen of the theme, press the select button while on the grid view/game tiles view.


## Support Thread
[Go here for help](https://www.facebook.com/groups/401660300458844/)

[Back to Index](https://sinisterspatula.github.io/RetroflagGpiGuides/)

###### Head back to our [Facebook Group](https://www.facebook.com/groups/401660300458844/)
