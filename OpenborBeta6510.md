![SR Image](https://sinisterspatula.github.io/SuperRetropieGuides/images/SRimage-short.jpg)

[Back to Index](https://sinisterspatula.github.io/SuperRetropieGuides/)

# NEW Openbor Beta 6xxx Install Guide

## For Pi Zero/One

## (It's good practice to make a backup first)

[See this thread for more information](https://retropie.org.uk/forum/topic/19326/openbor-6xxx-openbeta-testphase/)

# Beginning

 * Install this script module
```
wget http://raw.githubusercontent.com/crcerror/OpenBOR-63xx-RetroPie-openbeta/master/scriptmodules/openbor-6xxx.sh -O- | tr -d '\r' > /home/pi/RetroPie-Setup/scriptmodules/ports/openbor-6xxx.sh
```
 * Go into retorpie setup
 
`sudo ~/RetroPie-Setup/retropie_setup.sh`

 * manage package, and experimental, and install Openbor 6XXX from source.
 
 * let that finish, then we start building a replacement binary for it:

```
wget https://github.com/crcerror/OpenBOR-Raspberry/archive/master.zip
```

* then `unzip master.zip`

* then `cd ~/OpenBOR-Raspberry-master`

* then get the patch (this is a pi zero specific patch!)
```
wget https://github.com/SinisterSpatula/SuperRetropieGuides/raw/master/data/4-Galina.diff
```

* apply patch
`patch -p0 -i 4-Galina.diff`

* build it
`sudo make BUILD_PANDORA=1`

* copy the compiled OpenBOR binary, replacing the one we got from the retropie-setup installation.
```
sudo cp ~/OpenBOR-Raspberry-master/OpenBOR /opt/retropie/ports/openbor-6xxx
sudo cp ~/OpenBOR-Raspberry-master/OpenBOR.elf /opt/retropie/ports/openbor-6xxx
```

# GL4ES - Open GL

* `cd ~`
* `mkdir opengl`
* `git clone https://github.com/ptitSeb/gl4es.git opengl/`
* `cd opengl`
* `mkdir build; cd build; cmake .. -DBCMHOST=1; make`

* after you have openGL compiled it should give you a libGL.so.1 file, copy this file to lib folder next to openbor binary.
```
sudo mkdir -p /opt/retropie/ports/openbor-6xxx/lib/ && sudo cp ~/opengl/build/lib/libGL.so.1 /opt/retropie/ports/openbor-6xxx/lib/ && sudo chmod a+x /opt/retropie/ports/openbor-6xxx/lib/libGL.so.1
```

# Add some pak files
* Go and download HE-man masters of the universe or TNMNT Rescue Palooza (you can get the pak file from within it)

* place your pak's to: `~/RetroPie/roms/ports/openbor/`

* There's no need to unpack them, and no need to place them in pak folder.

# Let the fun begin

* Launch a game using the **Openbor - Module Selection Script** found in your Ports section of emulation station.  You may need to restart Emulation station before it shows up.


## This might not be needed, but something you can try if it won't load a game.

add a line to end of emulators.cfg:

`sudo nano /opt/retropie/configs/ports/openbor/emulators.cfg`

```
openbor = "pushd /opt/retropie/ports/openbor; /opt/retropie/ports/openbor/OpenBOR; popd"
```
* the above emulators.cfg might not be fully correct.

Per Cypherghost

> you may consider trying this instead, about the emulators.cfg, it should be:

```
openbor = "pushd /opt/retropie/ports/openbor; /opt/retropie/ports/openbor/OpenBOR %ROM%; popd"
The %ROM% is needed to start PAK-files through dialog menu or via EmulationStation as own system.
```


## Controls:

> You need to download the default.cfg file

```
sudo mkdir -p /opt/retropie/configs/ports/openbor/Saves && cd /opt/retropie/configs/ports/openbor/Saves && wget -O default.cfg https://github.com/SinisterSpatula/SuperRetropieGuides/raw/master/data/openbor/default.cfg 
```
> For HE-MAN you need to copy default.cfg to HE-MAN.cfg

```
sudo cp /opt/retropie/configs/ports/openbor/Saves/default.cfg /opt/retropie/configs/ports/openbor/Saves/HE-MAN.cfg
```

> You can use this method for each and every game, just copy the default.cfg and call it whatever game-name.cfg or overwrite that games game-name.cfg with the one from defalt.cfg.  If you don't do this step, you will end up with controls that aren't exactly right (you will see two players on your screen and it might be taking a bunch of screenshots when you press a normal button.  This is because it didn't load the correct config file, or you did not make a config file for it from the default.cfg.


* Then use controllertools/controls Updater Menu to grab the latest update that adds proper controls for Openbor Beta.

* For TNMNT Rescue Palooza, the controls will be mapped without any bindings needing to be set, via the default.cfg file you just installed.  For Other games, You need to ask the game to load default.cfg, or read the openbor beta thread at retropie forums about how to setup a script that will automatically copy default.cfg for each game.

Controls use [Advanced Controller Framework](https://sinisterspatula.github.io/SuperRetropieGuides/AdvancedControlFramework)



## Support Thread
[Go here for help](https://www.facebook.com/groups/SuperRetroPie/permalink/2455312278089084/)

## Additional Resources

[See this thread for more information](https://retropie.org.uk/forum/topic/19326/openbor-6xxx-openbeta-testphase/)

[Back to Index](https://sinisterspatula.github.io/SuperRetropieGuides/)

###### Head back to our [Facebook Group](https://www.facebook.com/groups/SuperRetroPie/)
