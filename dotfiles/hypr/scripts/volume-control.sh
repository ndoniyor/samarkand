#!/usr/bin/env bash

is_muted=$(pamixer --get-mute)

case $1 in
    up)
        if [ "$is_muted" = "true" ]; then 
            pamixer -t
        fi
        pamixer -i 5
        ;;
    down)
        if [ "$is_muted" = "true" ]; then 
            pamixer -t
        fi
        pamixer -d 5
        ;;
    mute)
        pamixer -t
        ;;
esac