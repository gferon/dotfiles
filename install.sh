#!/bin/bash -eux

exists() {
  if hash $1 2>/dev/null; then
    echo "$1 is installed, looking good!"
  else
    echo "$1 is NOT installed, halp!"
  fi
}

exists sway
exists swayidle
exists swaylock
exists i3status-rs
exists clipman
exists wl-paste

mkdir -p ~/.config/{sway,swaylock,i3status-rust}
ln -sf sway/* ~/.config/sway/
ln -sf swaylock/* ~/.config/swaylock/
ln -sf i3status-rust ~/.config/i3status-rust/
