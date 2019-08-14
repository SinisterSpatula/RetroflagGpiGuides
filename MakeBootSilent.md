![Banner Image](https://sinisterspatula.github.io/RetroflagGpiGuides/images/GuidesBanner.png)

[Back to Index](https://sinisterspatula.github.io/RetroflagGpiGuides/)


# Make the Booting Silent/hidden

* open cmdline.txt (it is located on the first partition of your SD card, usually D: drive)


These are the changes to /boot/cmdline.txt:
dwc_otg.lpm_enable=0
console=serial0,115200
console=tty3
root=PARTUUID=14a75fe9-02
rootfstype=ext4
elevator=deadline
fsck.repair=no
rootwait loglevel=3
consoleblank=0
plymouth.enable=0
quiet logo.nologo
vt.global_cursor_default=0

> This will hide all the text you see when booting, and make the bootup process completely silent/hidden.

## Support Thread
[Go here for help](https://www.facebook.com/groups/401660300458844/)

[Back to Index](https://sinisterspatula.github.io/RetroflagGpiGuides/)

###### Head back to our [Facebook Group](https://www.facebook.com/groups/401660300458844/)

