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
fi

if [ -x $(command_exists apm) ]; then
  echo "atom package manager is installed, installing plugins"
  apm install language-ansible
  apm install language-nginx
  apm install language-logstash
  apm install git-time-machine
  apm install minimap
  apm install pigments
  apm install firewatch-syntax
  echo "atom is installed, symlinking configuration"
  ln -sf $PWD/atom/config.cson ~/.atom/config.cson
fi
