#!/bin/zsh

REPOPATH=$PWD

# create data subfolder in repo
cd $REPOPATH
if [ ! -d data ]; then
        mkdir data
else
        rm -r data
        mkdir data
fi

# download .zip from letterboxd
cd ~/Downloads
open http://letterboxd.com/data/export
unzip letterboxd-*-utc.zip -d $REPOPATH/data
mv letterboxd-*-utc.zip ~/.Trash
echo "updating watchlist with runtimes"
cd $REPOPATH 
python3 python/watchlist_updater.py
python3 python/watchlist_randomizer.py

