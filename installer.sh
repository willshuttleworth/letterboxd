#!/bin/zsh

#assuming python3 is installed
python3 pip install pip
pip install requests
pip install pandas
pip install bs4
echo packages installed
chmod +x updater.sh
yes A | ./updater.sh

