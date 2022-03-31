import pandas as pd 
import requests
from bs4 import BeautifulSoup as bs
from bs4 import SoupStrainer as ss
import time

start = time.time()

list = pd.read_csv("data/watchlist.csv")
runtimes = []

only_p = ss('p')
only_class = ss(class_="text-link text-footer")

for link in list['Letterboxd URI']:
    response = requests.get(link)
    soup = bs(response.text, 'html.parser')
    data = soup.find("p", class_="text-link text-footer")
    data = str(data)
    runtimes.append(int(data[45:48]))

list['Runtime'] = runtimes

list.to_csv("data/updated_watchlist.csv")

end = time.time()

print(end - start, "seconds")
print("watchlist updated with runtimes")