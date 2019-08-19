![Banner Image](https://sinisterspatula.github.io/RetroflagGpiGuides/images/GuidesBanner.png)

[Back to Index](https://sinisterspatula.github.io/RetroflagGpiGuides/)

 Source: [Retropie Forums](https://retropie.org.uk/forum/topic/19693/lr-scummvm-request-for-comments-and-testing/2)
 
 Thanks to bebeidon and Kev Rose

# Scummvm information

 > you will need both the libretro and non-libretro versions.
 
 * For scummvm Install lr-scummvm (experimental?)
 
 * place your games within folders into the scummvm folder in: `retropie/roms/scummvm/`
 
 * rename your game's folder (say monkeyisland) to monkeyisland.svm for it to show in EmulationStation.

## Shortname's

You have to put a SHORTNAME.svm in the folder of the game so it can be run by libreto
shortnames can be found here: [https://www.scummvm.org/compatibility/](https://www.scummvm.org/compatibility/)
the shortname.svm file must only contain the shortname again so for monkey island 2 there would be a monkey2.svm with monkey2 in it

## Broken Sword / Baphomets Fluch 1, 2, 2.5

Libreto: all games not possible due bad performance

Standalone: 1 is fine, 2 is on the edge but performs well enough for a point&click for my taste, 2.5 not possible due performance

## Monkey Island 2 (only standard/original no talkie-version at this point)

Skip copy protection -> either libreto or save state in standalone 
libreto lets you input a keyboard "5" via R-button so it's possible to skip the protection.
on standalone you have to connect a keyboard to skip the protection (Pi outside of GPi) and create save states (normal and light mode) so you can access them through the scummvm launcher later when in the GPi again.

## Simon the Sorcerer 1 & 2

Is problematic because on save/load/exit you always have to confirm with either Y or N (on actual keyboard)

No solution so far on standalone, on libreto maybe possible via remapping through retroarch config?

## Leather_Goddesses_of_Phobos_2

Only starts on standalone same problem with exit as Simon the Sorcerer

## Rex Nebular

Copy protection needs keyboard (and game manual) only possible way is cracking the protection with online help and set save states
which can be loaded after directly from the launcher

## Running games overview

if games in the standalone list are not in the libreto list it's mostly because they either don't run at all or with really bad performance/unplayable.

## Libreto

```
Amazon - Guardians Of Eden
Beneath a Steel Sky
Conquests of the Longbow - The Legend of Robin Hood
Day Of The Tentacle
Discworld 1
Discworld 2
Flight of the Amazon Queen
Full Throttle
Gobliiins 1
Gobliins 2
Goblins 3
Indiana Jones and the Fate of Atlantis
Indiana Jones and the Last Crusade
Inherit the Earth - Quest for the Orb
King's Quest 5 - Absence Makes the Heart go Yonder
King's Quest 6 - Heir Today, Gone Tomorrow
Legend Of Kyrandia - Book One, The
Leisure Suit Larry 5 - Passionate Patty Does a Little Undercover Work
Leisure Suit Larry in the Land of the Lounge Lizards
Loom
Maniac Mansion
Monkey Island 2 - LeChuck's Revenge
Police Quest 1 - In Pursuite of the Death Angel
Police Quest 3 - The Kindred
Quest for Glory 1 - So You Want to be a Hero VGA Remake
Sam and Max
Space Quest 1 - The Sarien Encounter
Space Quest 4 - Roger Wilco and the Time Rippers
Space Quest 5 - The Next Mutation
The Dig
The Legend of Kyrandia 2
The Legend of Kyrandia 3 Malcolm's Revenge
The Secret of Monkey Island
Zak McKracken and the Alien Mindbenders
```

-------------------------------------------------------------

## standalone:

```
Amazon_Guardians_of_Eden
Beneath_a_Steel_Sky
Broken_Sword_1
Broken_Sword_2
Conquests_of_the_Longbow
Day_of_the_Tentacle
Discworld_1
Discworld_2
Flight_of_the_Amazon_Queen
Full_Throttle
Gabriel_Knight_1
Gobliiins 1
Gobliins 2
Goblins 3
Indiana_Jones_and_the_Fate_of_Atlantis
Indiana_Jones_and_the_Last_Cruade
Inherit_the_Earth
I_Have_No_Mouth_and_I_Must_Scream
Kings_Quest_5
Kings_Quest_6
Kings_Quest_7
Leather_Goddesses_of_Phobos_2
Leisure_Suit_Larry_1
Leisure_Suit_Larry_5
Loom
Maniac_Mansion
Monkey_Island_2
Rex_Nebular
Quest for Glory 1 - So You Want to be a Hero VGA Remake
Sam_n_Max
Space_Quest_1
Space_Quest_4
Space_Quest_5
Space_Quest_6
The_Curse_of_Monkey_Island
The_Dig
The_Legend_of_Kyrandia_1
The_Legend_of_Kyrandia_2
The_Legend_of_Kyrandia_3
The_Neverhood
The_Secret_of_Monkey_Island Stndard & Talkie Version
Torins_Pasage
touche
Zak_McKraken_and_the_Alien_Mindbenders
```


## Controls:
If you press start or select in-game it brings up the scummvm menu for saving. Start and select quits.

Make dpad work in standalone with change of mode -> SELECT+LEFT / SELECT+UP
depending on which mode should be applied -> prefered mode should be configured in emulationstation "Configure Inputs"
LED flashes purple when change successful

## Additional Resources
[More Info Here](https://retropie.org.uk/forum/topic/19693/lr-scummvm-request-for-comments-and-testing)



## Support Thread
[Go here for help](https://www.facebook.com/groups/401660300458844/)

[Back to Index](https://sinisterspatula.github.io/RetroflagGpiGuides/)

###### Head back to our [Facebook Group](https://www.facebook.com/groups/401660300458844/)
