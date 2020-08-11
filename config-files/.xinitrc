#!/bin/sh

userresources=$HOME/.Xresources
#usermodmap=$HOME/.Xmodmap
#sysresources=/etc/X11/xinit/.Xresources
#sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

#if [ -f $sysresources ]; then
#    xrdb -merge $sysresources
#fi

#if [ -f $sysmodmap ]; then
#    xmodmap $sysmodmap
#fi

#Mostly for XTerm
if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"

fi

#if [ -f "$usermodmap" ]; then
#    xmodmap "$usermodmap"
#fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

#Disable laptop screen and set main monitor as primary
xrandr --output "LVDS-1" --off &
xrandr --output "VGA-1" --primary &
setxkbmap -layout "br" & #Set keyboard layout.
xset r rate 200 150 & #Keyboard goes brrrrrr.
xset +dpms & xset dpms 0 0 300 & #Display turns off when inactive for five minutes.
numlockx & #Activate numlock
exec i3
