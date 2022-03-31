#!/bin/zsh

cd ~/Downloads
open http://letterboxd.com/data/export
sleep 3
unzip *-utc.zip -d ~/Desktop/letterboxd
mv *-utc.zip ~/.Trash
echo A
cd ~/Desktop/letterboxd
python3 watchlist_updater.py


