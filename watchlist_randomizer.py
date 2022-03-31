import random
import pandas as pd 

list = pd.read_csv("data/updated_watchlist.csv")

max = int(input("max runtime? (mins): "))

runtime_filter = list['Runtime'] < max
filter_list = list[runtime_filter]

print(len(filter_list), "options under", max, "mins")
num_choices = int(input("how many options? "))

choices = random.sample(range(len(filter_list)), num_choices)
for x in range(len(choices)):
    
    print(str(x + 1) + ".", filter_list.iat[choices[x], 2])

