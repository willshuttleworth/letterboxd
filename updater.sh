#!/bin/zsh

cd ~/Downloads
open http://letterboxd.com/data/export
sleep 3
unzip *-utc.zip -d ~/Desktop/letterboxd/data
mv *-utc.zip ~/.Trash
echo "updating watchlist with runtimes"
cd ~/Desktop/letterboxd
python3 watchlist_updater.py


