#!/bin/sh

read -p "Screen adjustment. Do you wish to enable additional screen? or disable connected screen? ([y]/n)" enable

echo 'Given value:' $enable

if [ "$enable" = y ]; then
    echo "Enabling... (xrandr --output HDMI-2 --above eDP-1)"
    xrandr --output HDMI-2 --above eDP-1 --auto
else
    echo "Disabling... (xrandr --output HDMI-2 --off)"
    xrandr --output HDMI-2 --off
fi

#xrandr --output HDMI-2 --above eDP-1
#xrandr --output HDMI-2 --off

