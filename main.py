import random

class Wine:
    def __init__(self, scope, style, grapes, country, region, appellation,  ## label attributes
    vintage,
    clarity, color_intensity, appearance_other,                             ## appearance
    condition, nose_intensity, development,                                 ## nose
    petillance, sweetness, acidity, alcohol,                                ## structure
    body, tannin_or_bitterness, length,
    fruit_color, fruit_family,                                              ## palate
    fruit_condition, floral, herbaceous, herbal, earth_organic, spice,
    earth_inorganic, aroma_other):
        self.style = style
        self.country = country

class TastingNote:
    def __init__(self, description, image):
        self.description = description
        self.image = image

catalogue = []

def filter_by_scope(catalogue, scope):
    return (wine for wine in catalogue if wine.scope <= scope)

def generate_note(catalogue):
    wine = random.choice(catalogue)
    note = generate_tasting_note(wine)
    return wine, note

def main():
    scope = input("Choose scope from 0 (narrow) to 3 (very wide)")

    filtered_catalogue = filter_by_scope(catalogue, scope)

    wine, note = generate_note(filtered_catalogue)

    print(note.description)
    user_guess = input("What's the wine?")    

