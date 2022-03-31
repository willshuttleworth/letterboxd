import pandas as pd 
import requests
from bs4 import BeautifulSoup as bs
import time
from multiprocess import Pool

start = time.time()
all_urls = list()
responses = list()
def link_setter():
    watchlist = pd.read_csv("data/watchlist.csv")
    for link in watchlist['Letterboxd URI']:
        all_urls.append(link)

def scrape(url):
    response = requests.get(url)
    return response.text

link_setter()

p = Pool(10)
responses = p.map(scrape, all_urls)
p.terminate()
p.join()

runtimes = []
for response in responses:
    soup = bs(response, 'html.parser')
    data = soup.find("p", class_="text-link text-footer")
    data = str(data)
    runtimes.append(int(data[45:48]))

watchlist = pd.read_csv("data/watchlist.csv")
watchlist['Runtime'] = runtimes

watchlist.to_csv("data/updated_watchlist.csv")

end = time.time()

print(end - start, "seconds")
print("watchlist updated with runtimes")