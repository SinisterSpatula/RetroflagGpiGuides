![Banner Image](https://sinisterspatula.github.io/RetroflagGpiGuides/images/GuidesBanner.png)

[Back to Index](https://sinisterspatula.github.io/RetroflagGpiGuides/)

> Update: Finally, this is good to go.  Wow, did not think there were so many things that could still cause this to not work.  I apologize if anyone had trouble, I am 100% confident in this tool now and feel like it's solid.  Enjoy!  And let me know what you think.

# Pi Zero boot logo Kernel v4.14.114 Pack (Offline Version)

## Please make a backup of your card first, just in case

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

On the off chance it does not boot, you can try: changing your kernel= value in config.txt of your boot partition to kernel=kernel.img, and copy over a kernel.img from a replacement image.

## Support Thread
[Go here for help](https://www.facebook.com/groups/401660300458844/)

[Back to Index](https://sinisterspatula.github.io/RetroflagGpiGuides/)

###### Head back to our [Facebook Group](https://www.facebook.com/groups/401660300458844/)

