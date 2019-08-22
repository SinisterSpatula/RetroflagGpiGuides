![Banner Image](https://sinisterspatula.github.io/RetroflagGpiGuides/images/GuidesBanner.png)

[Back to Index](https://sinisterspatula.github.io/RetroflagGpiGuides/)

Thanks To: SolemnSpirit (Chris)


# Raspi2png Install guide

> This tool allows you to take screenshots from your Retroflag Gpi.  They are stored in your screenshots folder in your home directory which can be accessed from samba or FTP.

For more information, see: [https://github.com/AndrewFromMelbourne/raspi2png/](https://github.com/AndrewFromMelbourne/raspi2png/)

1. ssh into pi as pi user
1. enter `sudo aptitude install libsdl1.2-dev`, say y when asked and allow process to finish
1. enter `wget https://github.com/AndrewFromMelbourne/raspi2png/archive/master.zip` and allow to finish
1. enter `unzip master.zip`
1. enter `cd raspi2png-master`
1. enter `make`
1. `mkdir ~/screenshots`
1. `sudo ln -s /home/pi/raspi2png/raspi2png ~/screenshots`
1. Create a screenshot by issuing the following via terminal:
	* ```./raspi2png -p ~/screenshots/screenshotname.png -c 9```


## Support Thread
[Go here for help](https://www.facebook.com/groups/401660300458844/)

[Back to Index](https://sinisterspatula.github.io/RetroflagGpiGuides/)

###### Head back to our [Facebook Group](https://www.facebook.com/groups/401660300458844/)