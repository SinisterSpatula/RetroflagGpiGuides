![SR Image](https://sinisterspatula.github.io/SuperRetropieGuides/images/SRimage-short.jpg)

[Back to Index](https://sinisterspatula.github.io/SuperRetropieGuides/)

# NEW Openbor Beta 6xxx Install Guide

## follow at your own risk. (consider having a backup first)

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

* then get the patch
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

# GL4gs - Open GL

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


## This might not be needed, but something you can try if it won't load a game.

add a line to end of emulators.cfg:

`sudo nano /opt/retropie/configs/ports/openbor/emulators.cfg`

```
openbor = "pushd /opt/retropie/ports/openbor; /opt/retropie/ports/openbor/OpenBOR; popd"
```
Per Cypherghost
They above may not be correct, you may consider trying this instead:

 >About the emulators.cfg
 >it should be

```
openbor = "pushd /opt/retropie/ports/openbor; /opt/retropie/ports/openbor/OpenBOR %ROM%; popd"
The %ROM% is needed to start PAK-files through dialog menu or via EmulationStation as own system.
```


## Controls:
Controls are Work in Progress.  It will use [Advanced Controller Framework](https://sinisterspatula.github.io/SuperRetropieGuides/AdvancedControlFramework)

## Support Thread
[Go here for help](https://www.facebook.com/groups/SuperRetroPie/permalink/2455312278089084/)

## Additional Resources

[See this thread for more information](https://retropie.org.uk/forum/topic/19326/openbor-6xxx-openbeta-testphase/)

[Back to Index](https://sinisterspatula.github.io/SuperRetropieGuides/)

###### Head back to our [Facebook Group](https://www.facebook.com/groups/SuperRetroPie/)
