![Banner Image](https://sinisterspatula.github.io/RetroflagGpiGuides/images/GuidesBanner.png)

[Back to Index](https://sinisterspatula.github.io/RetroflagGpiGuides/)

# Lakka General Guides

**Lakka** is a JeOS (Just Enough Operating System) based on LibreELEC, with RetroArch performing as both the frontend and the backend.

Lakka also is:
* an alternative to RetroPie that boots up much quicker: using Raspberry Pi 0W as an example, RetroPie takes ~40 seconds to get to the menu, while Lakka clocks at 30 seconds with the XMB menu driver and 28 with RGUI,
* a more seamless way to get into the game and back, utilizing the same menus across the board,
* a set of emulators with a (nearly) universal set of features, such as control remapping, savestates, rewind and netplay.

Keep in mind that Lakka is **not**:
* an optimal way to play games that are more demanding on the CPU, such as PlayStation, arcade machines and ScummVM games that run at a resolution higher than 320x240,
* a way to easily run native Linux apps.

## Basic Guides

### Installing Lakka

Get the latest official Lakka image for the GPi Case [here](https://www.lakka.tv/get/windows/rpi/). You need an SD card that's eight gigabytes or bigger, but you still can use the exact same tools you did for installing RetroPie.

### Connecting to Wi-Fi

Lakka doesn't require a wpa_supplicant.conf file or an external keyboard to connect to a given Wi-Fi hotspot. Just use the Wi-Fi menu in Settings, and type in the hotspot password using the onscreen keyboard.

### Uploading games

Lakka comes with two completely standalone cores, those being 2048 and Mr. Boom, thus acting 

Make sure you're connected to a Wi-Fi hotspot first, then enable SSH in Settings -> Services. After that, go back to the Lakka tab and choose Information -> Network Information. If everything's done correctly, you should see your GPi's local IP address, marked as (wlan0).

Using an SCP client, connect to Lakka using this IP address, SCP as the web protocol, 21 as the port, and root as both the login and the password. If everything went right, you shall gain access to Lakka's filesystem. Go to /storage/roms and upload your collection of games there.

The naming of the folders doesn't matter as much as it does in RetroPie, but having games sorted by platforms is good practice for keeping everything easily navigatable outside RetroArch.

### Scraping games

RetroArch and, by extension, Lakka have a built-in set of databases for recognizing ROMs based on their checksum. Any game that was successfully scanned will be added to an appropriate playlist.

There are three ways to scrape everything you have uploaded:
1) with the Import Content tab,
2) with the Load Content menu by pressing the Y button over a button or folder you want to scan,
3) by manually launching the game from the Load Content menu.

If something didn't get scanned, you can reach the /storage/playlists folder and add games by yourself.

All of your scraped games can also have thumbnails and boxart attached to them. You don't need to put those in by yourself: just go to the Online Updater menu and toggle the on-demand thumbnails downloader on. As long as you're connected to the internet, Lakka will automatically get the images for you.

### Switching to the XMB/PlayStation Portable-like interface

By default, the GPi build of Lakka defaults to the RGUI interface. While customizable, RetroArch is more known for using an XMB lookalike as its' UI, so you might want to swap it to XMB first.

Go to Settings -> User Interface and set Show Advanced Settings to on. Back up to the Settings menu and go to Driver. Whenever you see the Menu Driver option, change that from rgui to xmb. After that, restart RetroArch.

## Advanced Guides

### Decluttering the UI

Unlike in the regular RetroArch, disabling advanced settings in Lakka does indeed hide a lot of options people are more likely to not use at all. You can, however, go even further and remove even more menu items.

Go to Settings and from there, find the User Interface menu. For a short while, set Show Advanced Settings to on. From there, go to Views. Everything from the root of the Views menu controls what tabs should appear in RetroArch, while the two submenus, Quick Menu and Settings, control what should and shouldn't show up in the ingame menu and the Settings tab respectively.

It's recommended you disable the following, as they don't impact the GPi experience whatsoever:

Options | Notes
------- | -----
Views -> Show Reboot + Show Reboot | Might not be required, since the safe shutdown script is in place and flicking the power switch off is definitely the fastest way to quit Lakka
Views -> Show Load Disc + Show Dump Disc | Not needed since the GPi Case has no physical CD drive
Views -> Show Music Tab + Show Video Tab | Not needed since native video playback on Lakka is slow
Views -> Show Online Updater | Will not see a lot of use, aside from toggling the on-demand thumbnail downloader
Views -> Show Import content Tab | After you're done scanning your uploaded games, it's better to leave this out
Views -> Quick Menu -> Show Start Recording + Show Start Streaming and Views -> Settings -> Show Recording | Raspberry Pi 0 doesn't have enough processing power to do recording or streaming - and it doesn't seem like it works in Lakka 2.3 anyway
Views -> Quick Menu -> Show Information | Only provides the general data about the currently running game and won't have much use beyond that
Views -> Settings -> Show Services | Might not be needed if you aren't planning to use external Bluetooth controllers
Views -> Settings -> Show User | Probably will be used once, to type in your netplay username and to set up the RetroAchievements account; it's not much use after that
Views -> Settings -> Show Directory | All the directories are already set up, so you won't need this

You can also hide everything by either disabling the Settings tab or enabling the Kiosk Mode. Don't forget to set up the password to bring everything back to normal, else you will need to force shutdown RetroArch and edit retroarch.cfg while it's still closed (type `systemctl stop retroarch` into the console and `systemctl start retroarch` after you're done editing the config).

## Additional notes on Lakka 2.3 GPi and performance

The GPi-specific build of Lakka 2.3, while it does come with the safe shutdown script baked in, is also missing a few cores and menu features from the other versions.

The following cores work on Lakka, but are either non-present or bugged:
* The only SNES emulator present in lr-snes9x2002. You might want to get lr-snes9x2005 as well to emulate Super Mario World at full speed without graphical glitches.
* The current build of lr-prboom comes with demo support and native music playback, but also retains the floor/ceiling texture warping bug.
* The lr-fuse core on Lakka crashes whenever savestates are used. Keep in mind that, as of this writing, this is a bug present in **every** version of Lakka.
* The lr-dosbox core is not present, but it runs a handful of early DOS games.
* The lr-pokemonmini core is not present, but runs every game at full speed.

Either of those can be supplied from a RetroPie image, as long as the package is prefixed with an "lr-".

## Support Thread
[Go here for help](https://www.facebook.com/groups/401660300458844/)

[Back to Index](https://sinisterspatula.github.io/RetroflagGpiGuides/)

###### Head back to our [Facebook Group](https://www.facebook.com/groups/401660300458844/)
