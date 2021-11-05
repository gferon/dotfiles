#!/bin/bash -eu

exists() {
  if ! hash $1 2>/dev/null; then
    echo "$1 is NOT installed, halp!"
    exit 1
  fi
}

exists sway
exists swayidle
exists swaylock
exists waybar
exists clipman
exists wl-paste
exists playerctl
exists alacritty
exists mako
exists wofi

echo "symlinking configuration files"
ln -s $PWD/sway ~/.config/sway || true
ln -s $PWD/swaylock ~/.config/swaylock
ln -s $PWD/waybar ~/.config/waybar
ln -s $PWD/zlogin ~/.zlogin

if [ ! -f ~/.config/swaylock/lock.png ]; then
  echo "downloading wallpapers"
  curl -Lfo ~/.config/swaylock/lock.png http://static.simpledesktops.com/uploads/desktops/2020/01/19/Uno_Xray.png
fi
