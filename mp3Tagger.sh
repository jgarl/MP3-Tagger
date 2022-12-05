#!/bin/bash

FILE_NAME=$1

read -p "Song Title: " SONG_TITLE
read -p "Artist Name: " ARTIST_NAME 
read -p "Album Name: " ALBUM_NAME 
read -p "Genre: " GENRE 

eyeD3 -t "$SONG_TITLE" -a "$ARTIST_NAME" -A "$ALBUM_NAME" -G "$GENRE" "$FILE_NAME"; mv "$FILE_NAME" "$SONG_TITLE".mp3
