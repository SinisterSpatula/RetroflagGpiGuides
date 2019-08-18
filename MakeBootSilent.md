![Banner Image](https://sinisterspatula.github.io/RetroflagGpiGuides/images/GuidesBanner.png)

[Back to Index](https://sinisterspatula.github.io/RetroflagGpiGuides/)


# Make the Booting Silent/hidden

* open cmdline.txt (it is located on the first partition of your SD card, usually D: drive)

* These are the changes to /boot/cmdline.txt, do not copy and paste, they should all be on one line in your local copy, they are listed in this format to make it easier to read.  Compare it to yours and make any changes that are needed.

```
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
vt.global_cursor_default=0
```

> This will hide all the text you see when booting, and make the bootup process completely silent/hidden.

## Support Thread
[Go here for help](https://www.facebook.com/groups/401660300458844/)

[Back to Index](https://sinisterspatula.github.io/RetroflagGpiGuides/)

###### Head back to our [Facebook Group](https://www.facebook.com/groups/401660300458844/)

