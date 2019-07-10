sudo wget http://raw.githubusercontent.com/crcerror/RetroPie-OpenBOR-scripts/master/openbor.sh -O /home/pi/RetroPie-Setup/scriptmodules/ports/openbor.sh

Go to retropie setup and install openbor from source.

sudo wget "http://raw.githubusercontent.com/crcerror/RetroPie-OpenBOR-scripts/master/OpenBOR - Beats of Rage Engine Selection.sh" -O "/home/pi/RetroPie/roms/ports/OpenBOR - Beats of Rage Engine Selection.sh" && sudo chmod a+x /home/pi/RetroPie/roms/ports/*.sh

Place your bare PAK files to /home/pi/RetroPie/roms/ports/openbor/pak

wget http://raw.githubusercontent.com/crcerror/RetroPie-OpenBOR-scripts/master/extract.sh && chmod a+x extract.sh

Run extract. (do not sudo)
cd && cd ~/RetroPie/roms/ports/openbor && ./extract.sh

download gamepad script:
mkdir -p /opt/retropie/configs/all/runcommand-menu && wget "http://raw.githubusercontent.com/crcerror/RetroPie-OpenBOR-scripts/master/OpenBOR - Ultimate GamePad Setup.sh" -O "/opt/retropie/configs/all/runcommand-menu/OpenBOR - Ultimate GamePad Setup.sh" && sudo chmod a+x /opt/retropie/configs/all/runcommand-menu/*.sh

Quit and restart emulation station

(Engine selection error: can't make new window at (6, -1) size (17,40)).

sudo nano OpenBOR\ -\ Beats\ of\ Rage\ Engine\ Selection.sh
Change this:
`--menu "There are $((${#dialog_array[@]}/2)) games available\nWhich you want to play:" 16 70 16)`
To this:
`--menu "There are $((${#dialog_array[@]}/2)) games available\nWhich you want to play:" 25 75 20)`

Execute this from SSH instead to see the menu:
./OpenBOR\ -\ Beats\ of\ Rage\ Engine\ Selection.sh
Pick <Joypad config>, option 1,xbox 360 wireless.
Exit out.
This creates master.bor.cfg which is a binary file.

Now you can launch the games using the entry under ports "OpenBOR - Beats of Rage Engine"

If you have a game that is sourced from windows PC, you must "UNBOR it", see this link and read the UNBOR section toward the bottom:
https://retropie.org.uk/forum/topic/13784/openbor-finally-working-fine-on-retropie-with-es/2
