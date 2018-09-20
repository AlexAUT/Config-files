#!/bin/sh

echo $PWD

echo "Seting up config files"

echo "Sway config"
rm -f $HOME/.config/sway/config
mkdir -p $HOME/.config/sway
ln -s $PWD/sway.config $HOME/.config/sway/config

echo "Desktop background"
rm -r $HOME/.config/sway/background.jpg
ln -s $PWD/background.jpg $HOME/.config/sway/background.jpg

echo "Custom network bandwidth plugin"
rm -f $HOME/.config/sway/bandwidth
ln -s $PWD/bandwidth $HOME/.config/sway/bandwidt

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

