# letterboxd watchlist randomzier

### how to use

* make sure python3, and pandas, requests, and bs4 python libraries are all installed
* you are signed into your letterboxd account
* move this repository to the desktop
* navigate into repository and make sure installer script is executable with `chmod +x 
installer.sh'
* run installer script with `./installer.sh`
* if pandas, requests, and bs4 libraries are already installed, then only updater script needs 
to be used. this can be done by `yes A | ./updater.sh` (again make sure that this script is 
executable
* execute randomizer program with `python3 watchlist_randomizer.py`

### about

* just some fun with letterboxd data
* script downloads newest version of watchlist and use web scraping to add runtime to each film
* randomizer takes random sample of user's size choice and under runtime user specifies

### possible updates

* optimizing web scraping speed
* adding more data (director, actors, genre, etc.)

