# Config-files
Simple configuration for Sway Desktop with i3Blocks Status bar and termite as terminal

## Prerequisite
* sway
* i3Blocks
* termite (preferable without window decorations)
* playerctl (for media control)
* brightnessctl (changing screen brightness)
* amixer (volume control, alsa-utils)
* pactl (should be included by pulse-audio)

## Hint
* The setup will install fontawesome automatically for you under $HOME/.fonts, where sway searches
* The setup file will create symbolic links, so if you want to modify your config do it directly in the repo.

## How to install
* run setup.sh
* Reload sway config (default $mod+Shift+c)
* Change the input UD in the sway.config to your touchpad. Use "swaymsg -t get_outputs" to find the id
