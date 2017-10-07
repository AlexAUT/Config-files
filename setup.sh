#!/bin/sh

echo $PWD

# sway config
rm -f $HOME/.config/sway/config
mkdir -p $HOME/.config/sway
ln -s $PWD/sway.config $HOME/.config/sway/config
# link i3blocks config file
rm -f $HOME/.i3blocks.conf
ln -s $PWD/i3blocks.conf $HOME/.i3blocks.conf
# Create path to config file and remove if present
mkdir -p $HOME/.config/termite/
rm -f $HOME/.config/termite/config
ln -s $PWD/termite.conf $HOME/.config/termite/config
