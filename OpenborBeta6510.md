# Openbor Beta 6510-dev work in progress guide

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
wget https://raw.githubusercontent.com/crcerror/OpenBOR-Raspberry/master/patch/4-Galina.diff
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
sudo cp ~/opengl/build/lib/libGL.so.1 /opt/retropie/ports/openbor-6xxx/ && sudo chmod a+x /opt/retropie/ports/openbor-6xxx/libGL.so.1
```

* be in the location of your compiled/finished libGL.so.1 (usually inside of the build directory) then do:

```
sudo cp libGL.so.1 ~/openbor_openbeta/lib/
```

# Where I think I'm going wrong...
* The below is where I think I started to go wrong, and the part I can't figure out, this isn't right.

change the module selection script:
```
sudo nano /home/pi/RetroPie/roms/ports/OpenBOR\ -\ Module\ Selection\ Script.sh
```

```
[[ -e $JOY2KEY_SCRIPT ]] || (cd /home/pi/retropie/openbor_openbeta; ./OpenBOR; kill $$)
```

* Add this to the end of the last line if you want to log errors:
 `>> /dev/shm/runcommand.log 2>&1`

* Update the emulators.cfg:
`sudo nano /opt/retropie/configs/ports/openbor/emulators.cfg`

```
openbor = "pushd /home/pi/openbor_openbeta; /home/pi/openbor_openbeta/OpenBOR %ROM%; popd"
default = "openbor"
```