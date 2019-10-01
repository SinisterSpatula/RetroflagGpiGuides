![Banner Image](https://sinisterspatula.github.io/RetroflagGpiGuides/images/GuidesBanner.png)

[Back to Index](https://sinisterspatula.github.io/RetroflagGpiGuides/)


# Pegasus Front End guide

What is Pegasus?  Watch a quick [video demo](https://www.youtube.com/watch?v=O-kbEcsxYrM) of the gpiOS theme.

## Introduction

Pegasus is a new front end that is being actively developed and is compatible with Retropie.  You can install and update it from retropie setup.  There are not many theme's made for small screen so I have developed one, based off gameOS, modified to fit the Gpi small screen.  It has a beautiful interface, and some nice features to make it even better.  Pegasus is currently in Alpha release, but it's actually working very well and I have not encountered any issues.  Alpha sounds scary, but don't let that stop you from experiencing what it can offer!  It is not replacing or removing retropie, it is 100% retropie!  Just a new interface and theme system.  Features of the theme include: User settings to toggle the grid artwork from cartridge, box art, screenshot, steam tile, etc.  User setting to toggle background art from default, screenshot, fan art, solid color.  You can choose from several colors for the background and the highlight color.  Favorites and Last Played collections are working.  Alphabet letter jumping menu is working.  You can find the theme's announcement thread at the [Retropie Forums gpiOS thread](https://retropie.org.uk/forum/topic/23682/theme-gpios-based-on-gameos-pegasus-front-end-theme-modified-for-retroflag-gpi-case/)

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

## Booting Pegasus automatically

You could either install the front end chooser, or, if you just want Pegasus to auto boot, simply edit the autostart:
`sudo nano /opt/retropie/configs/all/autostart.sh` and switch it to: `pegasus-fe --silent 2&>1 >/dev/null #auto`

## Scraping for pegasus using skraper.net

Currently the easiest way to scrape your media is to use skraper.net for windows.  Set it up to scrape for Screenshot, fanart, video, wheel, Box2dfront, make a "custom mix" for the steam tile (save these to steamgrid) and for cartridge art, use the "support" media type and save those to box2dback.  In the settings for each, make sure they are setup as follows:

* Folder name: `box2dfront` will hold Box Front art.
* Folder name: `fanart` will hold fan art.
* Folder name: `screenshot` will hold screenshots.
* Folder name: `videos` will hold videos.
* Folder name: `wheel` will hold wheel images.
* Folder name: `steamgrid` will hold "Steam tile" composite images (screenshot with wheel art overlayed on top) similar to steam.
* Folder name: `box2dback` will hold game cartridge images. (Find these in screenscraper for windows under Media and images, called "Support" oddly.

> Steam Grid Tiles: You should have it generate a composite of the wheel art logo on top of the screenshot picture, and the composite image should be 168x82 pixels large, and stored in the steamgrid folder.  This way you get a "Steam tile" presentation of your games.  If you go to Media, and add a "User provided Mix" and create an XML file that outputs a composite of the screenshot + wheel art.  Here is the XML custom mix for skraper.net that I'm using:

```xml
<ImageComposition xsi:noNamespaceSchemaLocation="https://www.skraper.net/ImageComposition.xsd" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
  <Information ShortName="Pegasus GPi grid" LongName="Pegasus GPi Tile" Description="Screenshot + Wheel " Author="SinisterSpatula" />
  <Viewport Color="#00FFFFFF" Width="168" Height="82" ImageFormat="Png" CompressionPercent="0"/>
  <Drawings>
    <Item Type="Screenshot">
      <Display X="50%" Y="50%" Antialiasing="None" Width="200%" Height="200%" Anchor="VCenterHCenter" KeepRatio="true" />
      <Fallback Type="ScreenshotTitle">
        <Fallback Type="SystemWallPaper">
          <Children Reference="Parent">
            <Item Type="Text" Text="No Screenshot!" TextColor="#FFFFFFFF" FontFamilly="Arial" FontStyle="Bold Italic" />
          </Children>
        </Fallback>
      </Fallback>
    </Item>
    <Item Type="Wheel">
      <Display X="50%" Y="50%" Width="90%" Height="90%" Anchor="VCenterHCenter" />
      <Fallback Type="Text" Text="%name%" TextColor="#FFFFFFFF" FontFamilly="Arial" FontStyle="Bold Italic" />
    </Item>
  </Drawings>
</ImageComposition>
```

> Make sure to set skraper to resize your images to 160x120 (but keep aspect ratio, so only set either hight limit or width limit, not both!).

Go ahead and Scrape (using Retropie as your system of choice so that we get a gamelist.xml in each games folder)!

> Alternatively, you could use [skyscraper for linux](https://github.com/muldjord/skyscraper) which now has built in support for Pegasus!

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

## Scraping for Pegasus using Skyscraper

This is the artwork.xml I'm using with good results.  After scraping you'll want to rename the folder from "marquee" to "steamgrid".  For cartridge art, you'll need to use skraper.net (I don't think skyscraper has this yet).  You'll also need to rename these folders to what you see under the skraper.net section (after scraping).

```xml
<?xml version="1.0" encoding="UTF-8"?>
<!-- This is the default artwork.xml provided by Skyscraper. -->
<artwork>
  <!-- This is the screenshot, saved as a screenshot, with proper size. -->
  <output type="screenshot"  width="320"/>
  <!-- This is the wheel art, saved as a wheel, with proper size. -->
  <output type="wheel" width="160"/>
  <!-- This is the boxart, saved as a cover, with proper size. -->
  <output type="cover" height="120"/>
  <!-- This is the Steam Tile image, saved as a marquee -->
  <output type="marquee" width="168" height="82">
    <layer resource="screenshot" width="168" align="center" valign="middle">
    </layer>
    <layer resource="wheel" width="148" height="72" align="center" valign="middle">
      <shadow distance="5" softness="5" opacity="70"/>
    </layer>
  </output>
</artwork>
```

## After Scraping

After scraping with either option, basically, you want to end up with all the art saved in roms/(system name)/media/ using the folder names above.  The metadata seems to work best when it does NOT contain paths to the artwork, and pegasus just finds the art on it's own.  I recommend using the gamelist.xml that skraper.net generates, with no image paths in it, and no metadata.pegasus.txt file either.

## Install Theme

Now that you have scraped your games for meta data and media, and pegasus installed, and safe shutdown configured, let's install the GameOS modified theme:

```shell
cd ~/.config/pegasus-frontend/themes/ && git clone https://github.com/SinisterSpatula/pegasus-theme-gpiOS.git --branch master --depth 1
```

## What else do I need to know?

You should also re-encode your scraped video files to reduce their size and so they will play better.  Currently there's a bug with OMX player so we have to use software video playback, so it's crucial that your video's be optimized.  Follow this [Video Snaps Conversion Guide](https://sinisterspatula.github.io/RetroflagGpiGuides/snapsconversion)

* To access the built in settings screen of the theme, press the select button while on the grid view/game tiles view.

* For the Letter Jumping menu, press the Y button.


## Support Thread
[Go here for help](https://www.facebook.com/groups/401660300458844/)

[Back to Index](https://sinisterspatula.github.io/RetroflagGpiGuides/)

###### Head back to our [Facebook Group](https://www.facebook.com/groups/401660300458844/)
