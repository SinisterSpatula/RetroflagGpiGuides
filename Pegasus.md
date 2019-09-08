![Banner Image](https://sinisterspatula.github.io/RetroflagGpiGuides/images/GuidesBanner.png)

[Back to Index](https://sinisterspatula.github.io/RetroflagGpiGuides/)


# Pegasus Front End guide


## Introduction

Pegasus is a new front end that is being actively devloped and is compatible with Retropie.  You can install and update it from retropie setup.  There are not much theme's made for small screen but we are developing one, based off gameOS, modified to fit the Gpi small screen.  Currently it has a beautiful interface, and we are adding more features to make it even better.  Pegasus is currently in Alpha release so there will be some quirks and maybe bugs.  Don't let that stop you from experiencing what it can offer!  It is not a replacing retropie, it is 100% retropie!  Just with a new interface and theme system.

## Safe Shutdown

You will need to modify the safe shutdown script to terminate Pegasus instead of Emulationstation.  If you wish you could modify it to terminate both, and use both, there is also a front-end-chooser tool which is mentioined at [pegasus-frontend.org](https://pegasus-frontend.org/docs/user-guide/platform-retropie/)

## Scraping for pegasus

Currently the easiest way to scrape your media is to use skraper.net for windows.  Set it up to scrape for Screenshot, fanart, video, wheel, and Box2dfront.  In the settings for each, make sure they are setup as follows:

* Folder name: `box2dfront` will hold Box Front art.
* Folder name: `fanart` will hold fan art.
* Folder name: `screenshot` will hold screenshots.
* Folder name: `videos` will hold videos.
* Folder name: `wheel` will hold wheel images.

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

> Alternatively, you could use skyscraper for linux which now has built in support for Pegasus!

## Install Theme

Now that you have scraped your games for meta data and media, and pegasus installed, and safe shutdown configured, let's install the GameOS modified theme:

```
cd ~/.config/pegasus-frontend/themes/ && git clone https://github.com/SinisterSpatula/gameOS.git --branch master --depth 1
```






## Support Thread
[Go here for help](https://www.facebook.com/groups/401660300458844/)

[Back to Index](https://sinisterspatula.github.io/RetroflagGpiGuides/)

###### Head back to our [Facebook Group](https://www.facebook.com/groups/401660300458844/)
