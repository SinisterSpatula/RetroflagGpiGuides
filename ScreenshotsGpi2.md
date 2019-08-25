![Banner Image](https://sinisterspatula.github.io/RetroflagGpiGuides/images/GuidesBanner.png)

[Back to Index](https://sinisterspatula.github.io/RetroflagGpiGuides/)

Thanks To: SolemnSpirit (Chris)


# Raspi2png Install guide

## Part One - install raspi2png

> This tool allows you to take screenshots from your Retroflag Gpi.  They are stored in your screenshots folder in your home directory which can be accessed from samba or FTP.

For more information, see: [https://github.com/AndrewFromMelbourne/raspi2png/](https://github.com/AndrewFromMelbourne/raspi2png/)

1. ssh into pi as pi user
1. enter `sudo aptitude install libsdl1.2-dev`, say y when asked and allow process to finish
1. enter `wget https://github.com/AndrewFromMelbourne/raspi2png/archive/master.zip` and allow to finish
1. enter `unzip master.zip`
1. enter `cd raspi2png-master`
1. enter `make`
1. `mkdir ~/screenshots`
1. `sudo ln -s /home/pi/raspi2png-master/raspi2png ~/screenshots`
1. Create a screenshot by issuing the following via terminal:
	* `./screenshots/raspi2png -p ~/screenshots/screenshotname.png -c 9`
	
## Part Two - Make screenshots accessible from samba

1. At terminal enter `sudo nano /etc/samba/smb.conf`
1. Scroll to the bottom of the file and past in the following: 
	```
	[screenshots]
	comment = screenshots
	path = "home/pi/screenshots"
	writeable = yes
	guest ok = yes
	create mask = 0644
	directory mask = 0755
	force user = pi
	```
1. press ctrl + x
1. press yes
1. press enter
1. enter `sudo reboot` to reboot the pi
1. screenshots folder should now be available along with the usual shares


## Take multiple shots over duration

Thanks to: Hans


take 10 screenshots in 50 sec. to choose the best one

```
for f in {1..10}; do ./raspi2png -p ~/screenshots/gamename_$(date -Iseconds).png; sleep 5; done
```

## Troubleshooting

If pictures come out sideways or otherwise wrong, it's because your `/boot/config.txt` is perhapps using `display_lcd_rotate=1` and if so, you should change it to just `display_rotate=1` because raspi2png does not currently look for the other type of rotate (so it does not know it's rotated).

## Script

Handy script you can use for taking screenshots (so you don't have to remember the command.  put this in your home directory as "screenshot.sh" and make it executable with `chmod 775 screenshot.sh` then run it with `./screenshot.sh` for a single screenshot or `./screenshot.sh multi` (or any made up arguments, just add at least one thing to it for multiple shots).  (you also should place your raspi2png executable in `/usr/bin` or update the script below to point to wherever you plan to store raspi2png.

```
#!/bin/sh

if [ $# -gt 0 ]
then
        # supply any argument to take 10 screenshots over 50 seconds.
        echo "taking 10 screenshots over 50 seconds.  Saving to ~/screenshots hit [Ctrl+C] to interrupt.";
        for f in $(seq 1 10)
                do
                sleep 5;
                raspi2png -p /home/pi/screenshots/screenshot_$(date -Iseconds).png -c 0;
                echo "Saved screenshot $f."
                done;
else
# supply no arguments to take a single screenshot.
echo "taking 1 screenshot.  Saving to ~/screenshots";
raspi2png -p /home/pi/screenshots/screenshot_$(date -Iseconds).png -c 0;
fi
exit 1;

```


## Support Thread
[Go here for help](https://www.facebook.com/groups/401660300458844/)

[Back to Index](https://sinisterspatula.github.io/RetroflagGpiGuides/)

###### Head back to our [Facebook Group](https://www.facebook.com/groups/401660300458844/)
