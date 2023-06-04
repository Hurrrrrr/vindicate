import random

class Wine:
    def __init__(self, scope, style, label_color, grapes, country, region,        ## label attributes
    appellation, vintage,
    clarity, appearance_color, appearance_other,                  ## appearance
    condition, nose_intensity, development,                                 ## nose
    petillance, sweetness, acidity, alcohol,                                ## structure
    body, tannin_or_bitterness, length,
    fruit_color, fruit_family,                                              ## palate
    fruit_condition, fruit_subcondition, floral, herbaceous, herbal,
    earth_organic, earth_inorganic, grape_spice, oak, aroma_other):
        ##  0-3; 0 = narrow, 1 = medium, 2 = wide, 3 = very wide
        self.scope = scope

        ##  table, sparkling, fortified, dessert
        self.style = style

        ##  white, orange, rose, red
        ##  display = graphic
        self.label_color = label_color

        ##  list
        self.grapes = grapes

        ##  string
        self.country = country

        ##  string
        self.region = region

        ##  string
        self.appellation = appellation

        ##  int
        self.vintage = vintage

        ##  clear, hazy
        self.clarity = clarity

        ##  RGB?
        ##  display = graphic
        self.appearance_color = appearance_color

        ##  gas, sediment
        ##  display = text
        self.appearance_other = appearance_other

        ##  sound, faulted
        ##  will faulted wines even exist? user option?
        self.condition = condition

        ##  0-255; 0-50 = low, 51-101 = med-, 102-152 = med, 153-203 = med+, 204-255 = high
        ##  display = radar chart
        self.nose_intensity = nose_intensity

        ##  0-255; 0-84 = youthful, 85-169 = developing, 170-255 = mature
        ##  is this necessary?
        self.development = development

        ##  0-255; 0-19 = none, 20-38 = spritzy, 39-94 = semi-sparkling, 94-255 = sparkling
        ##  display = chart
        ##  only display if > none?
        self.petillance = petillance

        ##  0-255
        ##  display = radar chart
        self.sweetness = sweetness

        ##  0-255
        ##  display = radar chart
        self.acidity = acidity

        ##  0-255; 0-9 = <1%, 10-19 = 1%-1.9%, 20-29 = 2%-2.9%, etc.
        ##  display = radar chart
        self.alcohol = alcohol

        ##  0-255; 0-50 = light, 51-101 = med-, 102-152 = med, 153-203 = med+, 204-255 = full
        ##  display = radar chart
        self.body = body

        ##  0-255; 0-50 = low, 51-101 = med-, 102-152 = med, 153-203 = med+, 204-255 = high
        ##  display = radar chart
        self.tannin_or_bitterness = tannin_or_bitterness

        ##  0-255; 0-50 = short, 51-101 = med-, 102-152 = med, 153-203 = med+, 204-255 = long
        ##  display = bar chart
        self.length = length

        ##  0-255; 0-27 = very-green, 28-55 = green, 56-83 = yellow, 84-111 = orange,
        ##  112-139 = red, 140-167 = dark-red, 168-195 = purple, 196-223 = black, 224-255 = blue
        ##  display = text
        self.fruit_color = fruit_color

        ##  0-255; white: 0-27 = tart citrus, 28-55 = tart pome, 56-83 = sweet citrus,
        ##  84-111 = tart stone, 112-139 = tart tropical, 140-167 = sweet pome,
        ##  168-195 = sweet stone, 196-223 = sweet tropical, 224-255 = melon
        ##  red: vegetal, red, blue, black
        ##  display = text
        self.fruit_family = fruit_family

        ##  0-255; 0-50 = unripe, 51-101 = tart, 102-152 = ripe, 153-203 = overripe, 204-255 = jammy
        ##  display = text
        self.fruit_condition = fruit_condition

        ##  0-255; 0-101 = candied, 102-153 = dried, 154-205 = cooked, 206-255 = baked
        ##  display = text
        self.fruit_subcondition = fruit_subcondition

        ##  0-255; white: 0-35 = faint white flowers, 36-70 = honeysuckle, 71-106 = jasmine,
        ##  107-142 = rose, 143-179 = geranium, 180-215 = perfume, 216-255 = soap
        ##  red: 0-41 = faint purple flowers, 42-83 = violets, 84-127 = rose, 128-169 = lilac,
        ##  170-211 = perfume, 212-255 = soap
        ##  display = text
        self.floral = floral

        ##  0-255; 0-63: faint green leaf, 64-127 = asparagus, 128-191 = grass, 192-255 = green bell pepper
        ##  display = text
        self.herbaceous = herbaceous

        ##  0-255; 0-63: faint fresh herbs, fresh resinous herbs, 128-191 = dried resinous herbs,
        ##  192-255 = medicinal herbs
        ##  display = text
        self.herbal = herbal

        ##  0-255; 0-63: white mushroom, 64-127 = potting soil, 128-191 = forest floor, 192-255 = compost
        ##  display = text
        self.earth_organic = earth_organic

        ##  0-255; 0-41 = wet stone, 42-83 = wet pavement, 84-127 = slate, 128-169 = chalk,
        ##  170-211 = flint, 212-255 = scraped steel
        ##  display = text
        self.earth_inorganic = earth_inorganic

        ##  0-255; 0-63: fennel, 64-127 = black licorice, 128-191 = black pepper, 192-255 = white pepper
        ##  display = text
        self.grape_spice = grape_spice

        ##  0-35 = sawdust, 36-70 = cedar, 71-106 = vanilla,
        ##  107-142 = caramel, 143-179 = chocolate, 180-215 = burnt marshmallow, 216-255 = coffee
        ##  display = text
        self.oak = oak

        ##  string
        ##  display = text
        self.aroma_other = aroma_other

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

