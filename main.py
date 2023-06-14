import random
import sqlite3
from wine import Wine
from tastingnote import TastingNote
from answers import Answers

def get_scope_from_user():
    while True:
        scope = input("Choose scope from 0 (narrow) to 3 (very wide) ")

        if scope.isdigit():
            scope = int(scope)
            if 0 <= scope <= 3:
                return scope
        
        print("Invalid input. Please enter an integer from 0 to 3")

def get_random_wine(list_of_wine_row_objects, scope):
        wine_list = []
        for row in list_of_wine_row_objects:
            row_dict = dict(row)
            if row_dict['scope'] >= scope:
                wine_list.append(Wine(**row_dict))

        if wine_list:
            random_wine = random.choice(wine_list)
            return random_wine
            
        else:
            return("No wines found within chosen scope")

def get_tasting_note(wine):
    return TastingNote(wine)

def get_user_answers(wine):
    country = input("What is the country? ")
    region = input("What is the region? ")
    appellation = input("What is the appellation? ")
    grape = input("What is the primary grape? ")
    vintage = input("What is the vintage? ")

    user_answers = Answers(country, region, appellation, grape, vintage)

    return user_answers
    
def main():
    scope = get_scope_from_user()

    try:
        with open("catalog.sql", "r") as sql_file:
            sql_script = sql_file.read()

        conn = sqlite3.connect("catalog.db")
        # necessary to set this so row_factory will work as desired
        conn.row_factory = sqlite3.Row      
        c = conn.cursor()
        c.execute('SELECT * FROM wines')
        rows = c.fetchall()

        mystery_wine = get_random_wine(rows, scope)
        # there's probably a better way to do this
        if type(mystery_wine) != ('str'):
            print(get_tasting_note(mystery_wine))
        else:
            print("Error generating tasting note")
        
    finally:
        conn.close()

    user_answers = get_user_answers(mystery_wine)
    user_answers.check_user_answers(mystery_wine)

if __name__ == "__main__":
    main()