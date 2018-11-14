#!/bin/sh

echo $PWD

echo "Seting up config files"

echo "Sway config"
rm -f $HOME/.config/sway/config
mkdir -p $HOME/.config/sway
ln -s $PWD/sway.config $HOME/.config/sway/config

echo "Swayblocks config"
rm -f $HOME/.config/swayblocks/config.exs
rm -rf $HOME/.config/swayblocks/scripts
mkdir -p $HOME/.config/swayblocks
ln -s $PWD/swayblocks.exs $HOME/.config/swayblocks/config.exs
ln -s $PWD/swayblocksScripts $HOME/.config/swayblocks/scripts

echo "Desktop background"
rm -f $HOME/.config/sway/background.jpg
ln -s $PWD/background.jpg $HOME/.config/sway/background.jpg

# link i3blocks config file
echo "i3Blocks config"
rm -f $HOME/.i3blocks.conf
ln -s $PWD/i3blocks.conf $HOME/.i3blocks.conf

# Create path to config file and remove if present
echo "termite config"
mkdir -p $HOME/.config/termite/
rm -f $HOME/.config/termite/config
ln -s $PWD/termite.conf $HOME/.config/termite/config
echo "All Done, have fun!"

#Install font awesome
mkdir -p /tmp/fontawesome
cd /tmp/fontawesome
wget https://use.fontawesome.com/releases/v5.5.0/fontawesome-free-5.5.0-desktop.zip
unzip fontawesome-free-5.5.0-desktop.zip
cd fontawesome-free-5.5.0-desktop/otfs
mkdir -p $HOME/.fonts
cp * $HOME/.fonts/
rm -rf /tmp/fontawesome
