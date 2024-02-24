# letterboxd watchlist randomzier

### requirements

* python3
* libraries: pandas, requests, bs4, multiprocess

### usage

* run the `updater.sh` script to download the newest version of your watchlist and randomize it
* `python3 update.py`: run webscraper to update the runtimes of all movies in your watchlist
* `python3 randomize.py`: pick a random movie from your watchlist


### about

beautiful soup web scraping is used to retrieve the runtime of each movie in your watchlist
* done in parallel using `multiprocess` library

### notes

* scripts are macos specific but could be easily modified for other unix systems
* i recently added multiprocessing, which creates issues for mac users. to avoid this, you need to add `OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES` to your `.zshrc`. 
    * if the problems persists, try reading 
[this](https://stackoverflow.com/questions/50168647/multiprocessing-causes-python-to-crash-and-gives-an-error-may-have-been-in-progr) stack overflow post.

### possible updates

* optimizing web scraping speed(multiprocessing gave major improvement but still looking for 
gains)
* adding more data (director, actors, genre, etc.)

