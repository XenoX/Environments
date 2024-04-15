#!/usr/bin/env bash

player_status=$(playerctl --player=spotify status 2> /dev/null)

if [ "$player_status" = "Playing" ]; then
    echo -e " $(playerctl --player=spotify metadata artist) - $(playerctl --player=spotify metadata title)\nPlaying: $(playerctl --player=spotify metadata artist) - $(playerctl --player=spotify metadata title)\nplaying"
elif [ "$player_status" = "Paused" ]; then
    echo -e " $(playerctl --player=spotify metadata artist) - $(playerctl --player=spotify metadata title)\nPaused: $(playerctl --player=spotify metadata artist) - $(playerctl --player=spotify metadata title)\npaused"
else
	echo -e " Spotify Offline!\nSpotify Offline.\noffline"
fi