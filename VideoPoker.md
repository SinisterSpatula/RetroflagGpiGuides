![SR Image](https://sinisterspatula.github.io/SuperRetropieGuides/images/SRimage-short.jpg)

[Back to Index](https://sinisterspatula.github.io/SuperRetropieGuides/)

# Video Poker guide

Thanks to: [newlifegames.com](http://newlifegames.com/nlg/index.php?board=48.0) 

### Video:
[![https://i.ytimg.com/vi/WKzmRv05SrY/hqdefault.jpg?sqp=-oaymwEZCPYBEIoBSFXyq4qpAwsIARUAAIhCGAFwAQ==&rs=AOn4CLBnnhxibwGO-BUMQZCRF0ndG8p3Rg](http://img.youtube.com/vi/WKzmRv05SrY/0.jpg)](http://www.youtube.com/watch?v=WKzmRv05SrY "Players Edge Video Poker")

## Instructions

* Install lr-mame2016.

* Copy the roms to mame roms directory (Find these somewhere). 
  
  ```shell
  /home/pi/RetroPie/roms/mame-libretro
  ```
  
* Copy the [nvram folders](https://github.com/SinisterSpatula/SuperRetropieGuides/raw/master/data/lr-Mame2016%20Poker%20NVRAM.zip) into the mame nvram directory. (this will pre-configure the machines.)

  ```shell
  /home/pi/RetroPie/roms/mame-libretro/mame2016/nvram
  ```

* Copy the cfg files from the zip into the mame cfg directory. (this will preconfigure the button inputs, video cropping, and audio levels)

  ```shell
  /home/pi/RetroPie/roms/mame-libretro/mame2016/cfg
  ```

## Games (Find these somewhere):

File | Name | Type
------------|---------------------------|--------------------------------
pexm001p.zip | Player's Edge Plus (XM00001P+XMP00003) | Multi-Poker |
pexm004p.zip | Player's Edge Plus (XM00004P+XMP00002) | Multi-Poker
pex0055p.zip | Player's Edge Plus (X000055P+XP000022) | Deuces Wild Poker
pepp0816.zip | Player's Edge Plus (PP0816) | Treasure Chest Poker
. | . | . |
pebe0014.zip | Player's Edge Plus (BE0014) | Blackjack
. | . | . |
peke0001.zip | Player's Edge Plus (KE0001) | Keno
. | . | . |
peps0021.zip | Player's Edge Plus (PS0021) | Red White&Blue Slots |
peps0042.zip | Player's Edge Plus (PS0042) | Double Diamond Slots |
peps0296.zip | Player's Edge Plus (PS0296) | Haywire Slots |
peps0426.zip | Player's Edge Plus (PS0426) | Sizzling Sevens Slots |
peps0615.zip | Player's Edge Plus (PS0615) | Chaos Slots |
peps0716.zip | Player's Edge Plus (PS0716) | River Gambler Slots |

--------------------------------


### "Set Chips" (configuration chips)


File | Type | Notes |
------------|----------------|---------------
peset001.zip | Player's Edge Plus (Set001) Set Chip | Not a game, but a "Set Chip"/configuration chip |
peset038.zip | Player's Edge Plus (Set038) Set Chip | Not a game, but a "Set Chip"/configuration chip | 


Use these set chips to enable bill validator (insert bills, instead of coins).  (I've already done this via nvram)  pset038 is the one to use for almost all of them.  One or two machines might use pset001.


### Change Machine Settings

> If you want to change settings about a machine, Press O to open the door.  Press K until you hear a beep, or for some machines just press and release.
Then tap K until you see the setup menu.  Press K to cycle to the next menu, press L (jackpot reset) to adjust a setting, Press Q (deal/spin) to move to the next setting
within a menu.  When you reach the end of the menus, press O to close the door, and press L (jackpot Reset).

### How to use the set chips to enable bill validator:

> Copy the nvram files of the machine into the nvramfiles of the setchip (overwrite them).
Boot the set chip.  Press Q (deal/spin) to enable/disable bill validator.  Press K (self test) to save the new eprom setting.  Exit the emulation.  Copy the nvram files from the setchip back to the nvram files of the machine. (overwrite).  Then boot the machine.  You will have to do a reset proceedure:
Press O to open the door, press K (self test), Press O to close the door.  Press L (jackpot reset).

* Press 6 to insert credits, Press W to Bet 5 credits, Press R to bet 1 credit


> Mame 0.183 was the last version to have working bill validator.  As of 0.211 it is still not fixed.
lr-mame2016 is based on 0.174 so this works out fine.


## Bluetooth Keyboard Setup Instructions (already done via cfg files)

### Keno

* Load up peke0001.zip - Player's Edge Plus (KE0001) Keno.

* Hit Tab Key.

* Go to Video Options.  Change view to cropped.

* Go to sliders.  Lower the volume to zero for channel 1 & 2 (leave channel zero at default level).  This will reduce the buzzing sound.

* Next on the tab menu go to Analog Controls.

* Set Lightgun Digital Speed for both X and Y to 80.  Leave sensativity at 25 for both.

* Then Go to Input this machine.

* Set your controls how you like, I use: Lightpen: A button, Deal-spin-start: B button, Max Bet: Y Button.  Set Bill in as (joy1) select, but change coin in to an unused keyboard key (clear it with ESC then set it to backslash for example), Jackpot Reset: D-pad Down, Play Credit: Start.

### Black Jack

* Load up pebe0014.zip - Player's Edge Plus (BE0014) Blackjack

* Hit Tab Key.

* Go to Video Options.  Change view to cropped.

* Go to sliders.  Lower the volume to zero for channel 1 & 2 (leave channel zero at default level).  This will reduce the buzzing sound.

* Then Go to Input this machine.

* Set your controls how you like, I use: Surrender: R, Insurance: L, Stand: A, Doubledown: X, Deal-spin: B, Max Bet: Y, Coin in: Kbd Backslash, Bill in: Select, Split: Start, Jackpot Reset: D-pad Down, Play Credit: Start.

### Slots

* Load up peps0021.zip - Player's Edge Plus (PS0021) Red White&Blue Slots

* Hit Tab Key.

* Go to Video Options.  Change view to cropped.

* Go to sliders.  Lower the volume to zero for channel 1 & 2 (leave channel zero at default level).  This will reduce the buzzing sound.

* Then Go to Input this machine.

* Set your controls how you like, I use: Deal-spin: B, Max Bet: Y, Coin in: Kbd Backslash, Bill in: Select, Play Credit: A, Jackpot Reset: D-pad Down, Play Credit: Start.

### Poker

* Load up pexm001p.zip - Player's Edge Plus (XM00001P+XMP00003) Multi-Poker

* Hit Tab Key.

* Go to Video Options.  Change view to cropped.

* Go to sliders.  Lower the volume to zero for channel 1 & 2 (leave channel zero at default level).  This will reduce the buzzing sound.

* Then Go to Input this machine.

* Set your controls how you like, I use: Hold1: D-pad Up, Hold2: D-pad Right, Hold3: Y, Hold4: X, Hold5: A, Max Bet: R, Deal-Spin-Start: B, Coin in: Kbd Backslash, Bill in: Select, Jackpot Reset: D-pad Down, Play Credit: Start.


## Additional Resources
[newlifegames.com](http://newlifegames.com/nlg/index.php?board=48.0)

[Poker logo for your ES Theme](https://github.com/SinisterSpatula/SuperRetropieGuides/blob/master/images/vectors/poker.png)

## Support Thread
[Go here for help](https://www.facebook.com/groups/SuperRetroPie/permalink/2462551794031799/)

[Back to Index](https://sinisterspatula.github.io/SuperRetropieGuides/)

###### Head back to our [Facebook Group](https://www.facebook.com/groups/SuperRetroPie/)

