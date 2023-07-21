# CLI implementation of Vindicate, a wine-tasting practice program

#TODO: see answers.py

import random
import sqlite3
from wine import Wine
from tastingnote import TastingNote
from answers import UserAnswers, ResultsLogic

def get_scope_from_user():
    while True:
        scope = input("Choose scope from 0 (narrow) to 3 (very wide) ")

        if scope.isdigit():
            scope = int(scope)
            if 0 <= scope <= 3:
                return scope
        
        print("Invalid input. Please enter an integer from 0 to 3")

def get_accuracy_from_user():
        while True:
            accuracy = input("Choose accuracy from 0 (very low) to 5 (perfect) ")

            if accuracy.isdigit():
                accuracy = int(accuracy)
                if 0 <= accuracy <= 5:
                    return accuracy
            
            print("Invalid input. Please enter an integer from 0 to 5")

def get_vintage_from_user():
    while True:
        vintage = input("What is the vintage? ")

        if vintage.isdigit():
            vintage = int(vintage)
            return vintage
        elif vintage.lower() == "nv" or vintage.lower() == "mv":
            print("NV / MV currently not supported.")
            pass
        
        print("Invalid input. Vintage must be an integer.")        

# this could be optimised to avoid random.choice but not necessary
# at this scale
def get_random_wine(wine_row_objects_list, scope):
        wine_list = []
        for row in wine_row_objects_list:
            row_dict = dict(row)
            if row_dict['scope'] <= scope:
                wine_list.append(Wine(**row_dict))

        if wine_list:
            random_wine = random.choice(wine_list)
            return random_wine
            
        else:
            raise ValueError("No wines found within chosen scope")

def get_tasting_note(wine, accuracy):
    return TastingNote(wine, accuracy)

def get_user_answers(wine):
    grape = input("What is the primary grape? ")
    country = input("What is the country? ")
    region = input("What is the region? ")
    appellation = input("What is the appellation? ")
    vintage = get_vintage_from_user()

    user_answers = UserAnswers(grape, country, region, appellation, vintage)

    return user_answers
    
def main():
    scope = get_scope_from_user()
    accuracy = get_accuracy_from_user()

    try:
        with open("/home/jp/repos/vindicate/catalog.sql", "r") as sql_file:
            sql_script = sql_file.read()

        conn = sqlite3.connect("/home/jp/repos/vindicate/catalog.db")
        # necessary to set this so row_factory will work as desired
        conn.row_factory = sqlite3.Row      
        c = conn.cursor()
        c.execute('SELECT * FROM wines')
        rows = c.fetchall()

        mystery_wine = get_random_wine(rows, scope)
        try:
            print(get_tasting_note(mystery_wine, accuracy))
        except AttributeError:
            print("Error generating tasting note: Not a valid Wine object")
        
        
    finally:
        conn.close()

    user_answers = get_user_answers(mystery_wine)
    logic = ResultsLogic(user_answers, mystery_wine)
    logic.check_user_answers()
    logic.update_score()
    print("".join(logic.get_formatted_results()))

if __name__ == "__main__":
    main()