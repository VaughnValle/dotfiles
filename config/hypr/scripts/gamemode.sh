#!/usr/bin/env sh
HYPRGAMEMODE=$(hyprctl getoption decoration:blur:enabled | sed -n '2p' | awk '{print $2}')
if [ $HYPRGAMEMODE = 0 ] ; then
    hyprctl --batch "\
        keyword decoration:drop_shadow 1;\
        keyword decoration:blur:enabled 1;"
    exit
fi
hyprctl reload
