![Banner Image](https://sinisterspatula.github.io/RetroflagGpiGuides/images/GuidesBanner.png)

[Back to Index](https://sinisterspatula.github.io/RetroflagGpiGuides/)

# RetroArch Game Boy Bezels

Ever been bothered by those letterboxed Game Boy ROMs? Time to put that to an end and make your GPi Case look more like the real thing! No, we're not going to install shaders on top of it, those are way too slow to handle.

## Installation

Download the bezel pack from [here](https://github.com/brightentayle/supergpi-bezels/releases/download/initial/supergpi_bezels_v1_0.zip). The archive contains borders tailor-made for `lr-gambatte` running at 320x240 (basically, something every GPi Case user is going to have by default). `lr-gambatte` has a few monochrome coloration options, and

* **SuperGPi** - use with `Custom` (default option on RetroPie-based images!)
* **DMG** - use with `Internal - DMG`
* **Pocket** - use with `Internal - Pocket`
* **Light** - use with `Internal - Light`

The bezel pack has been tested specifically with Lakka so far, which means the RetroPie's implementation of RetroArch won't work with its' integer scaling, nor it will be seamless (i.e. there's gonna be obvious light/dark bars separating the bezel and the game screen), though it's going to work fine otherwise.

### RetroPie

* Extract the archive's contents to `/opt/retropie/configs/all/retroarch/overlay/`
* Navigate to  `/opt/retropie/configs/gb` and modify the following parameters within `retroarch.cfg`:

```
soft_filter_enable = "true"
input_overlay = "/opt/retropie/configs/all/retroarch/overlay/gb-supergpi.cfg"
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

* Save it, and try running the game.

###### Head back to our [Facebook Group](https://www.facebook.com/groups/401660300458844/)
