![Banner Image](https://sinisterspatula.github.io/RetroflagGpiGuides/images/GuidesBanner.png)

[Back to Index](https://sinisterspatula.github.io/RetroflagGpiGuides/)

> Update: This is the new offline version.

# Pi Zero boot logo Kernel v4.14.114 Pack (Offline Version)

## Please make a backup of your card first.

## Install command

This downloads the pack files and places them to `/opt/bootlogos/`

```shell
cd && cd && sudo mkdir -p /opt/bootlogos/ && cd /opt/bootlogos/ && sudo curl -O https://gamemod.com.br/SinisterSpatula/bootlogos/bootlogos-pizero-4-14-114.zip && sudo unzip bootlogos-pizero-4-14-114.zip && sudo rm bootlogos-pizero-4-14-114.zip
```
check for errors, make sure everything completed without any errors.  If errors, do `sudo rm -r /opt/bootlogos/` and try again.

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

## Support Thread
[Go here for help](https://www.facebook.com/groups/401660300458844/)

[Back to Index](https://sinisterspatula.github.io/RetroflagGpiGuides/)

###### Head back to our [Facebook Group](https://www.facebook.com/groups/401660300458844/)

