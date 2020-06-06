![Banner Image](https://sinisterspatula.github.io/RetroflagGpiGuides/images/GuidesBanner.png)

[Back to Index](https://sinisterspatula.github.io/RetroflagGpiGuides/)

# RetroArch Game Boy Bezels

Ever been bothered by those letterboxed Game Boy ROMs? Time to put that to an end and make your GPi Case look more like the real thing! No, we're not going to install shaders on top of it, those are way too slow to handle.

## Installation

Download the bezel pack from [here](https://github.com/brightentayle/supergpi-bezels/releases/download/initial/supergpi_bezels_v1_0.zip). The archive contains borders tailor-made for `lr-gambatte` running at 320x240 (basically, something every GPi Case user is going to have by default). `lr-gambatte` has a few monochrome coloration options, and each bezel should be matched with a specific setting:

* **gb-supergpi** - use with `Custom` (default option on RetroPie-based images!)
* **gb-dmg** - use with `Internal - DMG`
* **gb-pocket** - use with `Internal - Pocket`
* **gb-light** - use with `Internal - Light`

RetroArch in RetroPie-based images runs at the resolution of 640x480 by default for some reason, so we're going to set it to 320x240, just to make sure there's going to be no visible seams (thin dark/light lines) between the bezel and the game itself.

### RetroPie

* Extract the archive's contents to `/opt/retropie/configs/all/retroarch/overlay/`
* Navigate to  `/opt/retropie/configs/gb` and modify the following parameters within `retroarch.cfg`:

```
soft_filter_enable = "true"
input_overlay = "/opt/retropie/configs/all/retroarch/overlay/gb-supergpi.cfg"
video_fullscreen_x = "320"
video_fullscreen_y = "240"
```

* Then go to `/opt/retropie/configs/all/retroarch/`, and change this one parameter in `retroarch.cfg`, just to make sure the border remains opaque every single time:

```
input_overlay_opacity = "1.000000"
```

### Lakka

* Extract the archive's contents to `/storage/overlays/SuperGPi Bezels/`
* Navigate to `/storage/.config/retroarch/config/Gambatte` (bear in mind that `.config` is a hidden folder) and create a new file called `Nintendo - Game Boy.cfg`:

```
input_overlay = "/tmp/overlays/SuperGPi Bezels/gb-dmg.cfg"
input_overlay_enable = "true"
input_overlay_hide_in_menu = "true"
input_overlay_opacity = "1.000000"
input_overlay_scale = "1.000000"
quick_menu_show_save_game_overrides = "true"
quick_menu_show_save_core_overrides = "true"
```

## Bezel Preferences for Individual Games

You can make it so that any Game Boy/Game Boy Color ROM would appear with its' own colour settings; for example, Super Mario Land with the DMG palette and Super Mario Land with the GB Light palette. It's fairly simple to do:

* Get into the RetroArch menu (RetroPie users: Select+Y while ingame)
* In `Options`, change `GB Colorization` to either `custom` (RetroPie users: for the **gpi-superpi** bezel) or to `internal` (for everything else)
* In case you want to go with the latter, check the options in `Internal Palette`
* Select `Create game-options file`
* Go back and, in `Onscreen Overlay`, change the `Overlay Preset` to the bezel you want to match the GB colours
* Go back again, then select `Overrides -> Save Game Overrides`

###### Head back to our [Facebook Group](https://www.facebook.com/groups/401660300458844/)
