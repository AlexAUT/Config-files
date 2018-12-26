# Simple sway desktop configuration
Simple configuration for `i3` **and** `sway` Desktop with swayblocks Status bar and termite as terminal

Desktop            |  Consoles
:-------------------------:|:-------------------------:
![Desktop screenshot](https://github.com/AlexAUT/Config-files/blob/master/screenshots/desktop.png?raw=true)  |  ![Console screenshot](https://github.com/AlexAUT/Config-files/blob/master/screenshots/console.png?raw=true)


## Prerequisite
* sway or i3
* [swayblocks](https://github.com/rei2hu/swayblocks)
* j4-dmenu-desktop
* termite (preferable without window decorations)
* acpi (battery indicator)
* playerctl (for media control)
* brightnessctl (changing screen brightness, **current user has to be in input and screen group**)
* amixer (volume control, alsa-utils)
* pactl (should be included by pulse-audio)
* wget
* unzip
* ttf-liberation
* adobe-source-code-pro
* feh (if you use i3)

## Modify config
The final `i3.config` and `sway.config` are generated by the setup script. They are build from the `desktop.config` and `sway.*.config` or `i3.*.config` files so only modify these files and then rerun the `setup.sh`

### sway
It is recommended to adjust `sway.display.config` to your specific display setup

## Install
* run setup.sh
* Restart your desktop enviroment (recommended) or realod the config (default $mod+Shift+c)
