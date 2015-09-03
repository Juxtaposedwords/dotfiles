#!/bin/bash
 
fold="$HOME/.config/pianobar"
ctlf="$fold/ctl"
nowplaying="$fold/lyrics.sh"
while read L; do
        k="`echo "$L" | cut -d '=' -f 1`"
        v="`echo "$L" | cut -d '=' -f 2`"
        export "$k=$v"
done < <(grep -e '^\(title\|artist\|album\|stationName\|pRet\|pRetStr\|wRet\|wRetStr\|songDuration\|songPlayed\|rating\|songDuration\|songPlayed\|coverArt\|stationCount\|station[0-9]\+\)=' /dev/stdin)
 
case "$1" in
        songstart)
        echo -e "glyrc lyrics -a \"$artist\" -t \"$title\" -b \"$album\" -w /tmp/" > "$nowplaying"
    /usr/local/bin/terminal-notifier -subtitle  "Artist: $artist" -message "Album: $album" -title "$title" -appIcon /Users/maloywilkes/.config/pianobar/images/pandora.jpg -contentImage "$coverArt"
;; 
esac
