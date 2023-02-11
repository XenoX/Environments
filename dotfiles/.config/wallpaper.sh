#!/bin/bash
wallpaperdir=~/Pictures/wallpaper

files=($wallpaperdir/*)
picture=`printf "%s\n" "${files[RANDOM % ${#files[@]}]}"`

feh --bg-fill $picture