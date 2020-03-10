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
exists mako
exists wofi

echo "symlinking configuration files"
mkdir -p ~/.config/{sway,swaylock}
ln -vsf $PWD/sway/* ~/.config/sway/
ln -vsf $PWD/swaylock/* ~/.config/swaylock/
ln -vsf $PWD/zprofile ~/.zprofile
sudo cp -v sway.desktop /usr/share/wayland-sessions/sway.desktop

if [ ! -f ~/.config/swaylock/lock.png ]; then
  echo "downloading wallpapers"
  curl -Lfo ~/.config/swaylock/lock.png http://static.simpledesktops.com/uploads/desktops/2020/01/19/Uno_Xray.png
fi
