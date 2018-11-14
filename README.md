# Config-files
Simple configuration for Sway Desktop with i3Blocks Status bar and termite as terminal

Desktop            |  Consoles
:-------------------------:|:-------------------------:
![alt text](https://github.com/AlexAUT/Config-files/blob/master/screenshots/2017-10-08-101626_swaygrab.png?raw=true)  |  ![alt text](https://github.com/AlexAUT/Config-files/blob/master/screenshots/2017-10-08-101728_swaygrab.png?raw=true)


## Prerequisite
* sway
* [swayblocks](https://github.com/rei2hu/swayblocks)
* j4-dmenu-desktop
* termite (preferable without window decorations)
* acpi (battery indicator)
* playerctl (for media control)
* brightnessctl (changing screen brightness, **current user has to be in input and screen group**)
* amixer (volume control, alsa-utils)
* pactl (should be included by pulse-audio)

## Hint
* The setup file will create symbolic links, so if you want to modify your config do it directly in the repo.

## How to install
* run setup.sh
* Reload sway config (default $mod+Shift+c)
* Change the input ID in the sway.config to your touchpad and keyboard. Use "swaymsg -t get_inputs" to find the id
