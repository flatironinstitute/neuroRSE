#!/usr/bin/env sh

mkdir -p "$1"

echo "Now open up your presentation and set it to fullscreen."
echo "You have 10 seconds."
t=10
while [ $t -gt 0 ]; do
      echo "$t..."
      sleep 1
      t=$(($t-1))
done

echo "After screenshow, hit Ctrl+C to cancel, then delete the extra screenshots and then run the following in bash"
echo "for name in $1/*.png; do convert $name $1/`basename $name .png`.pdf; done"
echo "pdftk $1/*.pdf cat output Presentation.pdf"

i=1000000
pause=1
while true; do
    scrot -d $pause "$1/shot$i.png"
    xdotool key space
    i=$(($i+1))
done
