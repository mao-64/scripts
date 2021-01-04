#!/bin/sh

URL=$(awk '{ print $1 }' ~/Script/Bookmarks | dmenu -x 5 -y 24 -z 1900 -l 5)
echo $URL
URL2=$(awk '/'$URL'/ { print $2 }' ~/Script/Bookmarks)
echo $URL2

firefox --new-tab "$URL2"
