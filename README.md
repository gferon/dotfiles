# dotfiles

My humble collection of .dotfiles I use at home and at work.

Requirements can be found in the [install.sh](./install.sh) script.

## Usage

Just run the install script, and create a `~/.config/sway/output` file to configure your monitors 
(see `man sway-output` for more details).

It generally looks like:

```
# Wallpaper
output * bg ~/Pictures/strider.png fill

# You can get the names of your outputs by running: swaymsg -t get_outputs
output DP-1 resolution 2560x1440 position 0,0
output DP-2 resolution 2560x1440 position 2560,0
```
