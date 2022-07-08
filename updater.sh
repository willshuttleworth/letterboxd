#!/bin/zsh

REPOPATH=$(find ~ -type d -name "watchlist-randomizer")
# create data subfolder in repo
cd $REPOPATH
if [ ! -d data ]; then
        mkdir data
else
        rm -r data
        mkdir data
fi
REPOPATH="$REPOPATH/data"

# download .zip from letterboxd
cd ~/Downloads
open http://letterboxd.com/data/export
unzip *-utc.zip -d $REPOPATH
mv *-utc.zip ~/.Trash
echo "updating watchlist with runtimes"
cd $REPOPATH && cd ..
python3 watchlist_updater.py


