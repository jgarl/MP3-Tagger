#!/bin/bash

DIR=$(/bin/dirname "$1")
BASE=$(/bin/basename "$1")
EXT=$(echo "$BASE" | /usr/bin/awk -F. 'NF>1 {print $NF}')

read -p "Song Title: " SONG_TITLE
read -p "Artist Name: " ARTIST_NAME 
read -p "Album Name: " ALBUM_NAME 
read -p "Genre: " GENRE 

NAME="${SONG_TITLE}.${EXT}"
FULL_NAME="${DIR}/${NAME}"

eyeD3 -t "$SONG_TITLE" -a "$ARTIST_NAME" -A "$ALBUM_NAME" -G "$GENRE" "$1"; mv "$1" "$FULL_NAME"
