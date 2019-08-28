#!/bin/sh
PROJECT_DIR="$( cd "$(dirname "$0")" ; pwd -P )"

# Set the config path to default if non is set
if [ -z $XDG_CONFIG_HOME ]
then
  XDG_CONFIG_HOME=$HOME/.config/
fi

I3_CONFIG_FOLDER=$HOME/.config/i3
I3_CONFIG_FILE=$I3_CONFIG_FOLDER/config

SWAY_CONFIG_FOLDER=$HOME/.config/sway
SWAY_CONFIG_FILE=$SWAY_CONFIG_FOLDER/config

echo "Seting up config files"

echo "Create sway config"
cat $PROJECT_DIR/desktop.config > $PROJECT_DIR/i3.config
cat $PROJECT_DIR/i3.utils.config >> $PROJECT_DIR/i3.config

echo "i3 config"
if [ -e $I3_CONFIG_FILE ] 
then
  cp $I3_CONFIG_FILE $I3_CONFIG_FILE.save
  rm -f $I3_CONFIG_FILE
fi
mkdir -p $I3_CONFIG_FOLDER
ln -s $PROJECT_DIR/i3.config $I3_CONFIG_FILE

echo "Create sway config"
rm -f $PROJECT_DIR/sway.config
cat $PROJECT_DIR/desktop.config > $PROJECT_DIR/sway.config
cat $PROJECT_DIR/sway.background.config >> $PROJECT_DIR/sway.config
cat $PROJECT_DIR/sway.display.config >> $PROJECT_DIR/sway.config
cat $PROJECT_DIR/sway.input.config >> $PROJECT_DIR/sway.config
cat $PROJECT_DIR/sway.utils.config >> $PROJECT_DIR/sway.config

echo "Sway config"
if [ -e $SWAY_CONFIG_FILE ]
then
  cp $SWAY_CONFIG_FILE $SWAY_CONFIG_FILE.save
  rm -f $SWAY_CONFIG_FILE
fi
mkdir -p $SWAY_CONFIG_FOLDER
ln -s $PROJECT_DIR/sway.config $SWAY_CONFIG_FILE

echo "Swayblocks config"
rm -f $HOME/.config/swayblocks/config.exs
rm -rf $HOME/.config/swayblocks/scripts
mkdir -p $HOME/.config/swayblocks
ln -s $PROJECT_DIR/swayblocks.exs $HOME/.config/swayblocks/config.exs
ln -s $PROJECT_DIR/swayblocksScripts $HOME/.config/swayblocks/scripts

echo "Desktop background"
rm -f $HOME/.config/sway/background.jpg
ln -s $PROJECT_DIR/background.jpg $HOME/.config/sway/background.jpg

# Create path to config file and remove if present
echo "termite config"
mkdir -p $HOME/.config/termite/
rm -f $HOME/.config/termite/config
ln -s $PROJECT_DIR/termite.conf $HOME/.config/termite/config

# Install Swaylock fancy
echo "install swaylock-fancy"
cd $PROJECT_DIR/swaylockfancy
sudo make
mkdir -p $HOME/.config/swaylock-fancy/
ln -s $PROJECT_DIR/swaylockfancy/lock.png $HOME/.config/swaylock-fancy/lock.png

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
