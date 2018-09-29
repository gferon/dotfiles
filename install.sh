#!/bin/bash -eu

install_package() {
  $(which apt) && apt install $1 && return
  $(which dnf) && dnf install $1 && return
}

i3 --version || install_package i3-gaps
echo "i3 is installed, symlinking configuration"
ln -snf $PWD/i3 ~/.config/i3
ln -snf $PWD/i3status ~/.config/i3status
pushd i3-gnome
PREFIX=/usr/local sudo -E make install
popd
