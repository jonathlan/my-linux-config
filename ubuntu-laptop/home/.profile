# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

#Add new screen resolution 1920x1080
xrandr --newmode "1920x1080_60.00"  173.00  1920 2048 2248 2576  1080 1083 1088 1120 -hsync +vsync
xrandr --addmode eDP-1 "1920x1080_60.00"

#According to my graphics card, eDP/DP x4 single stream, should support:
#3200x2000 60Hz 30bpp-3
#4096x2160 30Hz 30bpp-2
#3840x2160 30Hz 30bpp-1
#1-Requires at least single channel DDR3 1333 for 3 simultaneous displays
#2-Requires at least single channel DDR3 1600 for 3 simultaneous displays
#3-Requires at least dual channel DDR3 1333 for 3 simultaneous displays
#4-Requires at least dual channel DDR3 1600 for 3 simultaneous displays
