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

Make sure you're connected to a Wi-Fi hotspot first, then enable SSH in Settings -> Services. After that, go back to the Lakka tab and choose Information -> Network Information. If everything's done correctly, you should see your GPi's local IP address, marked as (wlan0).

Using an SCP client, connect to Lakka using this IP address, SCP as the web protocol, 21 as the port, and `root` as both the login and the password. If everything went right, you shall gain access to Lakka's filesystem. Go to /storage/roms and upload your collection of games there.

The naming of the folders doesn't matter as much as it does in RetroPie, but having games sorted by platforms is good practice for keeping everything easily navigatable outside RetroArch.

### Scraping games

RetroArch and, by extension, Lakka have a built-in set of databases for recognizing ROMs based on their checksum. Any game that was successfully scanned will be added to an appropriate playlist.

There are three ways to scrape everything you have uploaded:
1) with the Import Content tab,
2) with the Load Content menu by pressing the Y button over a button or folder you want to scan,
3) by manually launching the game from the Load Content menu.

If something didn't get scanned, you can reach the `/storage/playlists/` folder and add games by yourself.

All of your scraped games can also have thumbnails and boxart attached to them. You don't need to put those in by yourself: just go to the Online Updater menu and toggle the on-demand thumbnails downloader on. As long as you're connected to the internet, Lakka will automatically get the images for you.

### Switching to the XMB/PlayStation Portable-like interface

By default, the GPi build of Lakka defaults to the RGUI interface. While customizable, RetroArch is more known for using an XMB lookalike as its' UI, so you might want to swap it to XMB first. Remember that using XMB generally provides a somewhat slower experience as it's more taxing on the Raspberry Pi Zero than RGUI, even when all you do is change games.

Go to Settings -> User Interface and set Show Advanced Settings to on. Back up to the Settings menu and go to Driver. Whenever you see the Menu Driver option, change that from rgui to xmb. After that, restart RetroArch.

## Advanced Guides

### Connecting Bluetooth devices and using multiple controllers for multiplayer

One downside of Lakka is that while Wi-Fi can be added directly through the UI, without having to hook up a keyboard, adding new Bluetooth devices has to be done via SSH, through the command line. Let's go through all of it.

First off, make sure Bluetooth is enabled on your GPi. Go to Settings -> Services, and if Bluetooth isn't toggled on, do exactly that.

Using PuTTY, connect to your GPi with its' local IP address (see Uploading Games for more) and port 22. Type `root` as both the login and the password. If you've put those credentials in correctly, you should be able to see the current version of Lakka in your PuTTY terminal. From there, type `bluetoothctl` and press Enter to open the Bluetooth devices manager. In there, you have to execute the following commands, preferably in the exact same order:

```
agent on
default-agent
power on
discoverable on
pairable on
scan on
```

Get your controller working in pairing mode. You might see its' name and MAC address (stylized as XX:XX:XX:XX:XX:XX, with X being any hexadecimal number). Copy the latter, you will need it for the following commands:

```
pair [MAC]
connect [MAC]
trust [MAC]
```

Don't rush it, use the `connect` and `trust` commands *only* after you see a prompt about Lakka successfully pairing the controller. You can try rebooting just to make sure you've hooked this gamepad to Lakka, for good.

Keep in mind that not all Bluetooth controllers will pair easily - the later revisions of DualShock 4 are particularly notorious for this. So if Lakka doesn't pick up the controller you need or is unable to pair it, you might want to look into using a different gamepad entirely.

One more thing: in case you need to prioritize your external gamepad over the GPi's on-board buttons, set the former as player 1's device and the latter (known as `Xbox 360 Controller`) as player 2's. This way, Lakka will set GPi's own buttons to the P1 spot when no controllers are connected, but use them for P2 otherwise. If you want to have a local multiplayer session and, say, get two Bluetooth controllers working with Lakka, move the GPi's input to P3 or even further.

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

### Adding ports

There's a few RetroArch cores in Lakka that are available as either ports of existing games or standalones. Bundled with it are **2048** and **Mr.Boom** that don't require additional data and are playable right out of the box, which is not the case for the rest of the ports.

Name | Performance | Prerequisites
---- | ----------- | -------------
2048 | Runs great | None
Cave Story (NxEngine) | Runs great | The original Cave Story executable and data files. Launch `Doukutsu.exe`.
Dinothawr | Runs great | Dinothawr data files, downloadable via RetroArch's own Online Updater. Launch `dinothawr.game`.
Doom (PrBoom) | Runs great at 35FPS, some WADs may be slow on 60FPS | Any Boom-compatible IWAD, as well as `prboom.wad` in the same folder. MP3 music tracks optional. Launch the IWAD or the PWAD in the subfolder.
Flashback (Reminiscence) | Runs great, but has very limited functionality outside of gameplay (no passwords or options, or sound during the intro segment) | The original DOS Flashback data. Launch `MENU1.MAP`.
Mr.Boom | Runs great | None
Outrun (Cannonball) | Not tested yet | The zipped Outrun Rev B ROM.
RPG Maker 2000/2003 (EasyRPG) | Runs decently, though MIDI playback in the RetroArch menus *may* cause crashes | 
Quake (TyrQuake) | Playable, but has dips in performance even at 50FPS | Quake 1 or its' expansion packs. OGG music tracks optional. Launch `pak0.pak`.

### Notes on adding Doom WADs

PWADs (**Doom** mods) can also be loaded on top of IWADs (main games) - as long as they're Boom-compatible mappacks or contain DeHACKed patches. As in, more popular/advanced mods, be it **Brutal Doom** or **Death Foretold**, will *not* work, and you'd have to look for their vanilla-friendly equivalents.

As an example, let's try to get **Scythe II** to work. Inside of the folder you keep your **Doom II** IWAD in, make a subfolder named "Scythe II" or whatever else you wanna call it. Then add your one PWAD, `scythe2.wad`, and `prboom.wad` into said subfolder. If you've got any WAD-specific MP3 music tracks you want to add in, put them in there as well. Then, run **Doom II** like you usually would and make sure "Look on parent folders for IWADs" is enabled in the core options - you can skip this step if you're sure it's already enabled. And, after that is done, go to the Load Content menu and run `scythe2.wad` from there. Voila! If your PWAD didn't work, it may either mean that the PWAD was made for a more advanced source port, like ZDoom or Zandronum, or that you've got your **Doom II** IWAD zipped.

Note that the current build of `lr-prboom` makes the floor and ceiling textures warp, unless you disable the `Wiggle Geometry Fix`, which you can find in the `General` options.

### Notes on Lakka 2.3 GPi and its' cores

The GPi-specific build of Lakka 2.3, while it does come with the safe shutdown script baked in, is also missing a few cores and menu features from the other versions.

The following cores work on Lakka, but are either non-present or bugged:
* The only SNES emulator present is `lr-snes9x2002`. You might want to get `lr-snes9x2005` as well to emulate **Super Mario World** at full speed without graphical glitches.
* The `lr-fuse` core on Lakka crashes whenever savestates are used. Keep in mind that, as of this writing, this is a bug present in **every** version of Lakka.
* The `lr-dosbox` core is not present, but it runs a handful of early DOS games.
* The `lr-pokemonmini` core is not present, but runs every game at full speed.
* The `lr-mrboom` core on Lakka doesn't come with tracker music, but otherwise works as intended.

Either of those can be supplied from a RetroPie image (which was made ***specifically*** for Raspberry Pi 0 or 1, other builds simply won't work), as long as the package is prefixed with an `lr-`. All new cores should be placed in the `/storage/cores` and, as long as the core's respective `.info` file is present, Lakka will associate the ROMs with the emulator those work in.

## Support Thread
[Go here for help](https://www.facebook.com/groups/401660300458844/)

[Back to Index](https://sinisterspatula.github.io/RetroflagGpiGuides/)

###### Head back to our [Facebook Group](https://www.facebook.com/groups/401660300458844/)
