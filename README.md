My humble collection of .dotfiles I use at work and at home for any dev workstation.

## Requirements

For Debian/Ubuntu based distributions:

```
# Atom
add-apt-repository ppa:webupd8team/atom
apt-get update
apt-get install atom
      
# i3 (latest version)
echo "deb http://debian.sur5r.net/i3/ $(lsb_release -c -s) universe" >> /etc/apt/sources.list
apt-get update
apt-get --allow-unauthenticated install sur5r-keyring
apt-get update
apt-get install i3
```
