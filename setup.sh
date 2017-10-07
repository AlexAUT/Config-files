#!/bin/sh

echo $PWD

echo "Installing font awesome on your system..."
curl -O http://fontawesome.io/assets/font-awesome-4.7.0.zip
unzip font-awesome-4.7.0.zip > /dev/null
mkdir -p $HOME/.fonts
cp font-awesome-4.7.0/fonts/fontawesome-webfont.ttf $HOME/.fonts
rm -rf font-awesome-4.7.0/
rm -f font-awesome-4.7.0.zip
echo "Done..."
echo "Seting up config files"

echo "Sway config"
rm -f $HOME/.config/sway/config
mkdir -p $HOME/.config/sway
ln -s $PWD/sway.config $HOME/.config/sway/config

echo "Custom network bandwidth plugin"
rm -f $HOME/.config/sway/bandwidth
ln -s $PWD/bandwidth $HOME/.config/sway/bandwidth

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

