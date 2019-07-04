![SR Image](https://sinisterspatula.github.io/SuperRetropieGuides/images/SRimage-short.jpg)

[Back to Index](https://sinisterspatula.github.io/SuperRetropieGuides/)

# System File Checks on every boot guide
Source: [reddit.com](https://www.reddit.com/r/RetroPie/comments/bzin0l/gpi_case_performing_disk_check_each_boot/)

If your Retroflag Gpi is doing a system file check every time you turn it on or reboot, follow the below guide to fix it.

## The Problem

fsck is supposed to only run only when it needs to: either the filesystem wasn't cleanly unmounted or "it's been a while since it ran". The filesystem records the timestamp of when it was last unmounted for that second reason.

The pi doesn't have a real time clock, though. This doesn't matter if you're connected to the internet because of NTP. Otherwise it will just default to 1/1/1970 12:00 AM UTC (or some hardcoded time in kernel) on every boot.

So during boot (without ntp, the date is set back 1970), it looks at the current ridiculously current time, which is "before the last unmount date". Linux fscks just to be on the safe side in this insane situation. From its point of view, the FS was last unmounted "in the future".

There's already a workaround this: a service called fake-hwclock which keeps the time going forward by auto saving and loading from a file. It's enabled by default. The problem with it is that the boot order is such that often the fsck part is run before the system time is restored by fake-hwclock.


## The Solution

The correct solution is to fix the boot order. We need to configure systemd so that fake-hwclock runs before the fsck.

We will need to modify the file `/etc/systemd/system/fake-hwclock.service.d/fsck.conf` with the following contents:

```
[Unit]
Before=systemd-fsck-root.service
```
The directory /etc/systemd/system/ exists but fake-hwclock.service.d doesn't, so you'll have to create that first before editing the file.


## Support Thread
There is no support thread for this topic, yet.

[Back to Index](https://sinisterspatula.github.io/SuperRetropieGuides/)

###### Head back to our [Facebook Group](https://www.facebook.com/groups/SuperRetroPie/)
