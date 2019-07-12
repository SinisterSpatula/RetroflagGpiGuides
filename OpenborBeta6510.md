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
## Galina isn't working for me, going to try these others:
```
wget https://raw.githubusercontent.com/crcerror/OpenBOR-Raspberry/master/patch/1-anna.diff
```
```
wget https://raw.githubusercontent.com/crcerror/OpenBOR-Raspberry/master/patch/2-Boris.diff
```
```
wget https://raw.githubusercontent.com/crcerror/OpenBOR-Raspberry/master/patch/3-Wassili.diff
```
```
wget https://raw.githubusercontent.com/crcerror/OpenBOR-Raspberry/master/patch/4-Galina.diff
```
```
wget https://raw.githubusercontent.com/crcerror/OpenBOR-Raspberry/master/patch/5-Dmitri.diff
```
```
wget https://raw.githubusercontent.com/crcerror/OpenBOR-Raspberry/master/patch/latest_build.diff
```
  > 5-Dmitri.diff is the newest.
  > Use https://github.com/DCurrent/openbor/archive/02375fbcd9c3848045dd7d11819542e83ae46cb1.zip as your master.zip for Dmitri.

* apply patch
`patch -p0 -i 5-Dmitri.diff`

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


# Still working on this part

add a line to end of emulators.cfg:

`sudo nano /opt/retropie/configs/ports/openbor/emulators.cfg`

```
openbor = "pushd /opt/retropie/ports/openbor; /opt/retropie/ports/openbor/OpenBOR; popd"
```
