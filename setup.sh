#!/bin/sh
PROJECT_DIR="$( cd "$(dirname "$0")" ; pwd -P )"

echo "Seting up config files"

echo "Sway config"
rm -f $HOME/.config/sway/config
mkdir -p $HOME/.config/sway
ln -s $PROJECT_DIR/sway.config $HOME/.config/sway/config

echo "Swayblocks config"
rm -f $HOME/.config/swayblocks/config.exs
rm -rf $HOME/.config/swayblocks/scripts
mkdir -p $HOME/.config/swayblocks
ln -s $PROJECT_DIR/swayblocks.exs $HOME/.config/swayblocks/config.exs
ln -s $PROJECT_DIR/swayblocksScripts $HOME/.config/swayblocks/scripts

echo "Desktop background"
rm -f $HOME/.config/sway/background.jpg
ln -s $PROJECT_DIR/background.jpg $HOME/.config/sway/background.jpg

# link i3blocks config file
echo "i3Blocks config"
rm -f $HOME/.i3blocks.conf
ln -s $PROJECT_DIR/i3blocks.conf $HOME/.i3blocks.conf

# Create path to config file and remove if present
echo "termite config"
mkdir -p $HOME/.config/termite/
rm -f $HOME/.config/termite/config
ln -s $PROJECT_DIR/termite.conf $HOME/.config/termite/config

#Install font awesome
mkdir -p /tmp/fontawesome
echo "Installing font awesome fonts"
cd /tmp/fontawesome
wget https://use.fontawesome.com/releases/v5.5.0/fontawesome-free-5.5.0-desktop.zip
unzip fontawesome-free-5.5.0-desktop.zip
cd fontawesome-free-5.5.0-desktop/otfs
FONT_DIR=$HOME/.local/share/fonts
mkdir -p $FONT_DIR
cp * $FONT_DIR
rm -rf /tmp/fontawesome

# Font config
echo "Font config"
FONT_CONFIG_DIR=$XDG_CONFIG_HOME/fontconfig
mkdir -p $FONT_CONFIG_DIR
rm -f $FONT_CONFIG_DIR/fonts.conf
ln -s $PROJECT_DIR/fonts.conf $FONT_CONFIG_DIR/fonts.conf

echo "All Done, have fun!"
