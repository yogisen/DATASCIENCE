# calculer une estimation de la population en 2050


import pandas as pd
import sqlite3
import math

connexion = sqlite3.connect('factbook.db')

a = pd.read_sql_query('select * from facts;', con = connexion)

print(a)

# dropna()

# N = N0*e**(rt)

# N = population finale
# N0 = population 2015
# e = constante
# r = taus de croissance annuelle
#t = nbre entre les 2 dates

# 5000 habitants croissance 4% 2015 --> 2050 t=35
# N = 5000 *e ** (0,04 *35)

def pop_growth(x):
	return x['population' ] * math.e ** ((x['population_growth']/100)*35)

a['pop_2050'] = a.apply(lambda row : pop_growth(row), axis=1)	

a = a.dropna(axis = 0)
a = a [(a['area_land'] > 0) & (a['population'] >0)]

b = a.sort_values(['pop_2050'], ascending = [False])
b = b['name'].iloc[0:9]

print (b)