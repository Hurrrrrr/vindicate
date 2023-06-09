import random
import sqlite3
from wine import Wine
from tastingnote import TastingNote


def filter_by_scope(catalog, scope):
    return (wine for wine in catalog if wine.scope <= scope)

def generate_note(catalog):
    wine = random.choice(catalog)
    note = generate_tasting_note(wine)
    return wine, note

def main():
    scope = input("Choose scope from 0 (narrow) to 3 (very wide)")

    filtered_catalog = filter_by_scope(catalog, scope)

    wine, note = generate_note(filtered_catalog)

    print(note.description)
    user_guess = input("What's the wine?")  

output = []

try:
    with open("catalog.sql", "r") as sql_file:
        sql_script = sql_file.read()

    conn = sqlite3.connect("catalog.db")
    # necessary to set this so row_factory will work as desired
    conn.row_factory = sqlite3.Row      
    c = conn.cursor()
    c.execute('SELECT * FROM wines')
    rows = c.fetchall()

    # sqlite "Row" is not a dict yet, so convert each
    for row in rows:
        row_dict = dict(row)
        wine = Wine(**row_dict)
        output.append(wine)
        test_note = TastingNote(wine)
        print(test_note)
    

finally:
    conn.close()

