# letterboxd watchlist randomzier

***THIS REALLY ONLY WORKS FOR MAC, I AM SORRY. PYTHON SCRIPTS WORK FINE AS LONG AS CORRECT LIBRARIES ARE INSTALLED, BUT FILE PATHS MAY NEED TO BE MODIFIED BASED ON HOW YOU DOWNLOAD YOUR LETTERBOXD DATA***

***yes, if you view your watchlist on letterboxd there is a shuffle button. i do not care. this is more fun***

### how to use

* make sure python3, pandas, requests, and bs4 python libraries are all installed
* you are signed into your letterboxd account
* move this repository to the desktop
* navigate into repository and make sure installer script is executable with `chmod +x 
installer.sh`
* run installer script with `./installer.sh`
* if pandas, requests, and bs4 libraries are already installed, then only updater script needs 
to be used. this can be done by `./updater.sh` (again make sure that this script is 
executable)
* execute randomizer program with `python3 watchlist_randomizer.py`

##### troubleshooting note

* i recently added multiprocessing, which creates issues for mac users. to avoid this, you 
need to edit the environment so it is not blocked or whatever is happening. to do this, open 
the terminal and type `nano .zshrc` and into the file paste `export 
OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES`. then save and go back to terminal and type `source 
~/.zshrc` close and reopen terminal and multiprocessing with python should now be allowed. if 
the problems persists, try reading 
[this](https://stackoverflow.com/questions/50168647/multiprocessing-causes-python-to-crash-and-gives-an-error-may-have-been-in-progr) 
stack overflow article.

### about

* just some fun with letterboxd data
* script downloads newest version of watchlist and use web scraping to add runtime to each film
* randomizer takes random sample of user's size choice and under runtime user specifies

### possible updates

* optimizing web scraping speed(multiprocessing gave major improvement but still looking for 
gains)
* adding more data (director, actors, genre, etc.)
