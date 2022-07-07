#!/bin/zsh

cd ~/Downloads
open http://letterboxd.com/data/export
# data directory does not exist yet, change script so it is made
unzip *-utc.zip -d ~/Desktop/watchlist-randomizer/data
mv *-utc.zip ~/.Trash
echo "updating watchlist with runtimes"
cd ~/Desktop/watchlist-randomizer
python3 watchlist_updater.py


