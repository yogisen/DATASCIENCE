# utuiliser Python avec SQLite

import sqlite3
connexion = sqlite3.connect("factbook.db")

c=connexion.cursor()
c.execute('select name, population from facts where population != "" order by population asc limit 10;')
print(c.fetchall())
