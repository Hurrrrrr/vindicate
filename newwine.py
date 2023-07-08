# A script that creates a text file which can be used to help
# create new Wine database entries

def format_string(user_string):
    cap_string = user_string.title()
    quoted_string = "'" + cap_string + "'"
    return quoted_string

scope = input(  f"What is the scope?\n"
                f"0 = narrow, 1 = medium, 2 = wide, 3 = very wide ")

style = input(  f"\nWhat is the style?\n"
                f"table, sparkling, fortified, dessert ")

label_color = input("\nWhat is the label_color?\n")

country = input("\nWhat is the country?\n")

region = input("\nWhat is the region?\n")

appellation = input("\nWhat is the appellation?\n")

grapes = input("\nWhat are the grapes?\nComma separated string ")

vintage = input("\nWhat is the vintage ?\n")

producer = input("\nWhat is the producer?\n")

bottling = input("\nWhat is the bottling?\n")

clarity = input("\nWhat is the clarity?\n")

appearance_red = input("\nWhat is the appearance_red?\n")
appearance_green = input("\nWhat is the appearance_green?\n")
appearance_blue = input("\nWhat is the appearance_blue?\n")

appearance_other = input("\nWhat is the appearance_other?\n")

condition = input("\nWhat is the condition?\n")

nose_intensity = input (    f"\nWhat is the nose_intensity?\n"
                            f"0-50 = low, 51-101 = med-, 102-152 = med,\n"
                            f"153-203 = med+, 204-255 = high ")

development = input("\nWhat is the development?\n0-84 = youthful, 85-169 = developing, 170-255 = mature ")

petillance = input("\nWhat is the petillance?\n0-19 = none, 20-38 = spritzy, 39-94 = semi-sparkling, 94-255 = sparkling ")

sweetness = input("\nWhat is the sweetness?\n0-4 = dry, 5-11 medium-dry, 12-44 medium-sweet, 45-114 sweet, 115-255 very sweet ")

acidity = input("\nWhat is the acidity?\n0-50 = low, 51-101 = med-, 102-152 = med, 153-203 = med+, 204-255 = high ")

alcohol = input("\nWhat is the alcohol?\n")

body = input("\nWhat is the body?\n0-50 = light, 51-101 = med-, 102-152 = med, 153-203 = med+, 204-255 = full ")

tannin_or_bitterness = input("\nWhat is the tannin/bitterness?\n0-29 = none, 30-50 = low, 51-101 = med-, 102-152 = med, 153-203 = med+, 204-255 = high ")

finish = input("\nWhat is the finish?\n0-50 = short, 51-101 = med-, 102-152 = med, 153-203 = med+, 204-255 = long ")

fruit_color = input("\nWhat is the fruit color?\nwhite: 0-42 = green, 43-85 = greenish, 86-128 = yellow, 129-171 = yellow-orange, 172-214 = orange, 215-255 = deep orange\nred: 0-42 = orange, 43-85 = red, 86-128 = deep red, 129-171 = purple, 172-214 = blue, 215-255 = black ")

fruit_family = input("\nWhat is the fruit family?\nwhite: 0-27 = tart citrus, 28-55 = tart pome, 56-83 = sweet citrus, 84-111 = tart stone, 112-139 = tart tropical, 140-167 = sweet pome, 168-195 = sweet stone, 196-223 = sweet tropical, 224-255 = melon\nred: 0-28 = vegetal, 29-85 = tart berry, 86-142 = tart stone, 143-199 = sweet berry, 200-255 = sweet stone ")

fruit_condition = input("\nWhat is the fruit condition?\n0-50 = unripe, 51-101 = tart, 102-152 = ripe, 153-203 = overripe, 204-255 = jammy ")

fruit_subcondition = input("\nWhat is the fruit subcondition?\n0-38 = candied, 39-138 = none, 139-177 = dried, 178-216 = cooked, 217-255 = baked ")

floral = input("\nWhat is the floral?\nwhite: 0-69 = none, 70-97 = faint white flowers, 98-125 = honeysuckle, 126-153 = jasmine, 154-181 = rose, 182-209 = geranium, 210-237 = perfume, 238-255 = soap\nred: 0-69 = none, 70-100 faint purple flowers, 101-131 = violets, 132-162 = rose, 163-193 = lilac, 194-224 = perfume, 225-255 = soap ")

herbaceous = input("\nWhat is the herbaceous?\n0-79 0 none, 80-123 = faint greenness, 124-167 = asparagus, 168-211 = grass, 212-255 = green bell pepper ")

herbal = input("\nWhat is the herbal?\n0-119 = none, 120-164 = faint dried herbs, 165-209 = garrigue, 210-255 = medicinal herbs ")

earth_organic = input("\nWhat is the earth_organic?\n0-89 = none, 90-131 = white mushroom, 132-173 = potting soil, 174-215 = forest floor, 216-255 = compost ")

earth_inorganic = input("\nWhat is the earth_inorganic?\n0-89 = none, 90-117 = wet stone, 118-145 = wet pavement, 146-173 = slate, 174-201 = chalk, 202-229 = flint, 230-255 = scraped steel ")

grape_spice = input("\nWhat is the grape spice?\n0-139 = none, 140-168: fennel, 169-197 = black licorice, 198-225 = black pepper, 226-255 = white pepper ")

oak_aroma = input("\nWhat is the oak_aroma?\n0-36 = sawdust, 37-73 = sandalwood, 74-110 = baking spice, 111-147 = vanilla, 148-184 = caramel, 185-221 = mocha, 222-255 = coffee ")

oak_intensity = input("\nWhat is the oak_intensity?\n0-89 = none, 90-131 = faint, 132-173 = moderate, 174-215 = strong, 216-255 = intense ")

aroma_other = input("\nWhat is the aroma_other?\n")

new_wine = []
new_wine.append(scope + ',    -- scope')
new_wine.append(format_string(style) + ',    -- style')
new_wine.append(format_string(label_color) + ',    -- label_color')
new_wine.append(format_string(country) + ',    -- country')
new_wine.append(format_string(region) + ',    -- region')
new_wine.append(format_string(appellation) + ',    -- appellation')
new_wine.append(format_string(grapes) + ',    -- grapes')
new_wine.append(vintage + ',    -- vintage')
new_wine.append(format_string(producer) + ',    -- producer')
new_wine.append(format_string(bottling) + ',    -- bottling')
new_wine.append(format_string(clarity) + ',    -- clarity')
new_wine.append(appearance_red + ',    -- appearance_red')
new_wine.append(appearance_green + ',    -- appearance_green')
new_wine.append(appearance_blue + ',    -- appearance_blue')
new_wine.append(format_string(appearance_other) + ',    -- appearance_other')
new_wine.append(format_string(condition) + ',    -- condition')
new_wine.append(nose_intensity + ',    -- nose_intensity')
new_wine.append(development + ',    -- development')
new_wine.append(petillance + ',    -- petillance')
new_wine.append(sweetness + ',    -- sweetness')
new_wine.append(acidity + ',    -- acidity')
new_wine.append(alcohol + ',    -- alcohol')
new_wine.append(body + ',    -- body')
new_wine.append(tannin_or_bitterness + ',    -- tannin_or_bitterness')
new_wine.append(finish + ',    -- finish')
new_wine.append(fruit_color + ',    -- fruit_color')
new_wine.append(fruit_family + ',    -- fruit_family')
new_wine.append(fruit_condition + ',    -- fruit_condition')
new_wine.append(fruit_subcondition + ',    -- fruit_subcondition')
new_wine.append(floral + ',    -- floral')
new_wine.append(herbaceous + ',    -- herbaceous')
new_wine.append(herbal + ',    -- herbal')
new_wine.append(earth_organic + ',    -- earth_organic')
new_wine.append(earth_inorganic + ',    -- earth_inorganic')
new_wine.append(grape_spice + ',    -- grape_spice')
new_wine.append(oak_aroma + ',    -- oak_aroma')
new_wine.append(oak_intensity + ',    -- oak_intensity')
new_wine.append(format_string(aroma_other) + "    -- aroma_other")

with open('entry.txt', 'w') as f:
    for attribute in new_wine:
        f.write(attribute + '\n')