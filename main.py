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

def check_user_answers(wine, answers_obj):

    if check_country(answers_obj.country, wine):
        answers_obj.country_result = True
    
    if check_region(answers_obj.region, wine):
        answers_obj.region_result = True
    
    if check_appellation(answers_obj.appellation, wine):
        answers_obj.appellation_result = True
    
    if check_grape(answers_obj.grape, wine):
        answers_obj.grape_result = True
    
    if check_vintage(answers_obj.vintage, wine):
        answers_obj.vintage_result = True
    
    print(answers_obj.country_result)
    print(answers_obj.region_result)
    print(answers_obj.appellation_result)
    print(answers_obj.grape_result)
    print(answers_obj.vintage_result)
    
    

def check_country(user_answer, wine):
    if user_answer.lower() == wine.country.lower():
        return True
    else:
        return False

def check_region(user_answer, wine):
    if user_answer.lower() == wine.region.lower():
        return True
    else:
        return False

def check_appellation(user_answer, wine):
    if user_answer.lower() == wine.appellation.lower():
        return True
    else:
        return False

def check_grape(user_answer, wine):
    if user_answer.lower() == wine.grapes.lower():
        return True
    else:
        return False

def check_vintage(user_answer, wine):
    if user_answer == wine.vintage:
        return True
    else:
        return False
    
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
    check_user_answers(mystery_wine, user_answers)

if __name__ == "__main__":
    main()