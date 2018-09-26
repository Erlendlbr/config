#!/usr/bin/env bash

TMPBG=/tmp/screen.png
LOCK=~/.config/i3/lock.png
RES=$(xrandr | grep 'current' | sed -E 's/.*current\s([0-9]+)\sx\s([0-9]+).*/\1x\2/')

ffmpeg -f x11grab -video_size $RES -y -i $DISPLAY -i $LOCK -filter_complex "boxblur=6:6,overlay=(main_w-overlay_w)/2:(main_h-overlay_h)/2" -vframes 1 $TMPBG -loglevel quiet



letterEnteredColor=49b5b5ff
letterRemovedColor=c41a63ff
passwordCorrect=00000000
passwordIncorrect=c41a6388
background=00000000
foreground=ffffffff


i3lock -t -n -i $TMPBG  \
    --insidecolor=373445ff --ringcolor=ffffffff --line-uses-inside \
    --keyhlcolor=d23c3dff --bshlcolor=d23c3dff --separatorcolor=00000000 \
    --insidevercolor=fecf4dff --insidewrongcolor=d23c3dff \
    --ringvercolor=ffffffff --ringwrongcolor=ffffffff --indpos="x+86:y+1003" \
    --radius=15 --veriftext="" --wrongtext=""

rm $TMPBG
