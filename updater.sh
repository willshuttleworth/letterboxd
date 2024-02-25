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

# download data from letterboxd
cd ~/Downloads
open http://letterboxd.com/data/export
unzip letterboxd-*-utc.zip -d $REPOPATH/data
mv letterboxd-*-utc.zip ~/.Trash

# update runtimes and randomize
echo "updating watchlist with runtimes"
cd $REPOPATH 
python3 update.py
python3 randomize.py

