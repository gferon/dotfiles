#!/bin/sh
set -e

command_exists () {
    command -v "$1" &> /dev/null ;
}

if [ -x $(command_exists i3) ]; then
  echo "i3 is installed, symlinking configuration"
  rm -f ~/.config/i3
  rm -f ~/.config/i3status
  ln -s $PWD/i3 ~/.config/i3
  ln -s $PWD/i3status ~/.config/i3status
  echo "if you didn't do it already, you should cd i3-gnome; run make install"
  cd i3-gnome
  PREFIX=/usr/local sudo -E make install
fi
