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
exists i3status-rs
exists clipman
exists wl-paste
exists playerctl
exists j4-dmenu-desktop
exists alacritty

echo "symlinking configuration"
set -x
mkdir -p ~/.config/{sway,swaylock}
ln -sf $PWD/sway/* ~/.config/sway/
ln -sf $PWD/swaylock/* ~/.config/swaylock/
swaymsg reload

echo "getting wallpapers"
curl -Lfo ~/.config/swaylock/lock.png http://static.simpledesktops.com/uploads/desktops/2020/01/19/Uno_Xray.png
