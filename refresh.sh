#!/bin/bash
xrandr --output DisplayPort-2 --mode 2560x1440 -r 144
xrandr --output DisplayPort-1 --mode 1920x1080 -r 144
xrandr --output DisplayPort-1 --right-of DisplayPort-2
