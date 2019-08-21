![Banner Image](https://sinisterspatula.github.io/RetroflagGpiGuides/images/GuidesBanner.png)

[Back to Index](https://sinisterspatula.github.io/RetroflagGpiGuides/)

> Update: I am 100% confident in this tool now and feel like it's solid.  Enjoy!  And let me know what you think.

# Pi Zero and Zero W boot logo Kernel v4.14.114 Pack (Offline Version)

## Install command

This downloads the pack files and places them to `/opt/bootlogos/`

```shell
cd && cd && sudo mkdir -p /opt/bootlogos/ && cd /opt/bootlogos/ && sudo curl -O https://gamemod.com.br/SinisterSpatula/bootlogos/bootlogos-pizero-4-14-114.zip && sudo unzip bootlogos-pizero-4-14-114.zip && sudo rm bootlogos-pizero-4-14-114.zip
```
check for errors, make sure everything completed without any errors.  If errors, do `cd ~/ && sudo rm -r /opt/bootlogos/` and try again.

## Install Part two

This places the script to your retropie menu.

```shell
sudo wget -O ~/RetroPie/retropiemenu/Kernel_Boot_Logo.sh  https://raw.githubusercontent.com/SinisterSpatula/RetroflagGpiGuides/master/data/kernel/Kernel_Boot_Logo.sh && sudo chmod 775 ~/RetroPie/retropiemenu/Kernel_Boot_Logo.sh
```

## Usage

Locate Kernel_Boot_Logo item on your retropie menu and launch it.

View the gallery at [https://photos.app.goo.gl/3mcbh5VN8hDVn9Ux7](https://photos.app.goo.gl/3mcbh5VN8hDVn9Ux7)

Pick a Logo, install it and reboot to see your new logo.

Brought to you by the [Retroflag Gpi Case User's group](https://www.facebook.com/groups/401660300458844/).

### Hey wait, there's still one line of text at the bottom:

You should [apply these changes here](https://sinisterspatula.github.io/RetroflagGpiGuides/MakeBootSilent) to remove that line of text.

### Troubleshooting

On the off chance it does not boot, you can try: changing your kernel= value in config.txt of your boot partition to kernel=kernel.img, and copy over a kernel.img from a replacement image.  If you're bootup video starts to sound weird after installing the boot logo, or you notice other odd slowness:  Follow the [Stuttering Splash Video / Slowness Fix](https://sinisterspatula.github.io/RetroflagGpiGuides/StutteringSplashVideo)

## Icon for ES Themes

[https://github.com/SinisterSpatula/RetroflagGpiGuides/blob/master/data/kernel/kernel-boot.png](https://github.com/SinisterSpatula/RetroflagGpiGuides/blob/master/data/kernel/kernel-boot.png)

`/opt/retropie/configs/all/emulationstation/gamelists/retropie/gamelist.xml`

```
<game>
        <path>./Kernel_Boot_Logo.sh</path>
        <name>Kernel boot logo installer</name>
        <desc>Kernel boot logo installer by Adam, switches between linux kernels with a different logo picture.</desc>
        <image>/home/pi/RetroPie/retropiemenu/icons/kernel-boot.png</image>
        <playcount>3</playcount>
        <lastplayed>20190809T040420</lastplayed>
    </game>
```


## Support Thread
[Go here for help](https://www.facebook.com/groups/401660300458844/)

[Back to Index](https://sinisterspatula.github.io/RetroflagGpiGuides/)

###### Head back to our [Facebook Group](https://www.facebook.com/groups/401660300458844/)

