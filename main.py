import random
import sqlite3

class Wine:
    def __init__(self, scope, style, label_color, country, region,        ## label attributes
    appellation, vintage,
    clarity, appearance_red, appearance_green, appearance_blue, appearance_other,                  ## appearance
    condition, nose_intensity, development,                                 ## nose
    petillance, sweetness, acidity, alcohol,                                ## structure
    body, tannin_or_bitterness, finish,
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
        # self.grapes = grapes

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

        ##  display = graphic
        self.appearance_red = appearance_red
        self.appearance_green = appearance_green
        self.appearance_blue = appearance_blue

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

        ##  0-255; 0-4 = dry, 5-11 medium-dry, 12-44 medium-sweet, 45-114 sweet, 115-255 very sweet
        ##  display = radar chart
        self.sweetness = sweetness

        ##  0-255; 0-50 = low, 51-101 = med-, 102-152 = med, 153-203 = med+, 204-255 = high
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
        self.finish = finish

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

        ##  0-255; 0-99 = none, 100-138 = candied, 139-177 = dried, 178-216 = cooked, 217-255 = baked
        ##  display = text
        self.fruit_subcondition = fruit_subcondition

        ##  0-255; white: 0-69 = none, 70-97 = faint white flowers, 98-125 = honeysuckle, 126-153 = jasmine,
        ##  154-181 = rose, 182-209 = geranium, 210-237 = perfume, 238-255 = soap
        ##  red: 0-69 = none, 70-100 faint purple flowers, 101-131 = violets, 132-162 = rose, 163-193 = lilac,
        ##  194-224 = perfume, 225-255 = soap
        ##  display = text
        self.floral = floral

        ##  0-255; 0-79 0 none, 80-123 = faint greenness, 124-167 = asparagus, 168-211 = grass, 212-255 = green bell pepper
        ##  display = text
        self.herbaceous = herbaceous

        ##  0-255; 0-119 = none, 120-164 = faint dried herbs, 165-209 = resinous herbs, 210-255 = medicinal herbs
        ##  
        ##  display = text
        self.herbal = herbal

        ##  0-255; 0-89 = none, 90-131 = white mushroom, 132-173 = potting soil, 174-215 = forest floor, 216-255 = compost
        ##  display = text
        self.earth_organic = earth_organic

        ##  0-255; 0-89 = none, 90-117 = wet stone, 118-145 = wet pavement, 146-173 = slate, 174-201 = chalk,
        ##  202-229 = flint, 230-255 = scraped steel
        ##  display = text
        self.earth_inorganic = earth_inorganic

        ##  0-255; 0-139 = none, 140-168: fennel, 169-197 = black licorice, 198-225 = black pepper, 226-255 = white pepper
        ##  display = text
        self.grape_spice = grape_spice

        ##  0-79 = none, 80-104 = sawdust, 105-129 = cedar, 130-154 = vanilla,
        ##  155-179 = caramel, 180-204 = chocolate, 205-229 = burnt marshmallow, 230-255 = coffee
        ##  display = text
        self.oak = oak

        ##  string
        ##  display = text
        self.aroma_other = aroma_other

class TastingNote:
    def __init__(self, description, image):
        self.description = description
        self.image = image

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
    conn.row_factory = sqlite3.Row      # necessary to set this so row_factory will work
    c = conn.cursor()
    c.execute('SELECT * FROM wines')
    rows = c.fetchall()

    for row in rows:
        row_dict = dict(row)
        print(row_dict)

finally:
    conn.close()

