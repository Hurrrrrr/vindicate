class Wine:
    def __init__(self, id, scope, style, label_color, country, region,        ## label attributes
    appellation, grapes, vintage, producer, bottling,
    clarity, appearance_red, appearance_green, appearance_blue, appearance_other,                  ## appearance
    condition, nose_intensity, development,                                 ## nose
    petillance, sweetness, acidity, alcohol,                                ## structure
    body, tannin_or_bitterness, finish,
    fruit_color, fruit_family,                                              ## palate
    fruit_ripeness, fruit_subcondition, floral, herbaceous, herbal,
    earth_organic, earth_inorganic, grape_spice, oak_aroma, oak_intensity,
    aroma_other):
        self.id = id

        ##  0-3; 0 = narrow, 1 = medium, 2 = wide, 3 = very wide
        self.scope = scope

        ##  table, sparkling, fortified, dessert
        self.style = style

        ##  white, orange, rose, red
        ##  display = graphic
        self.label_color = label_color

        ##  string
        self.country = country

        ##  string
        self.region = region

        ##  string
        self.appellation = appellation

        ##  comma separated string
        self.grapes = grapes

        ##  int
        self.vintage = vintage

        ##  string
        self.producer = producer

        ##  string
        self.bottling = bottling

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

        ##  0-255; 0-29 = none, 30-50 = low, 51-101 = med-, 102-152 = med, 153-203 = med+, 204-255 = high
        ##  display = radar chart
        self.tannin_or_bitterness = tannin_or_bitterness

        ##  0-255; 0-50 = short, 51-101 = med-, 102-152 = med, 153-203 = med+, 204-255 = long
        ##  display = bar chart
        self.finish = finish

        ##  white: 0-42 = green, 43-85 = greenish, 86-128 = yellow
        ##  129-171 = yellow-orange, 172-214 = orange, 215-255 = deep orange
        ##  red: 0-42 = orange, 43-85 = red, 86-128 = deep red
        ##  129-171 = purple, 172-214 = blue, 215-255 = black
        ##  display = text
        self.fruit_color = fruit_color

        ##  0-255; white: 0-27 = tart citrus, 28-55 = tart pome, 56-83 = sweet citrus,
        ##  84-111 = tart stone, 112-139 = tart tropical, 140-167 = sweet pome,
        ##  168-195 = sweet stone, 196-223 = sweet tropical, 224-255 = sweet melon
        ##  red: 0-28 = vegetal, 29-85 = tart berry, 86-142 = tart stone,
        ##  143-199 = sweet berry, 200-255 = sweet stone
        ##  display = text
        self.fruit_family = fruit_family

        #   self.fruit_subfamily
        #   

        ##  0-50 = unripe, 51-101 = just-ripe, 102-152 = ripe, 153-203 = overripe, 204-255 = jammy 
        ##  display = text
        self.fruit_ripeness = fruit_ripeness

        ##  0-38 = candied, 39-138 = none, 139-177 = dried, 178-216 = cooked, 217-255 = baked
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

        ##  0-255; 0-119 = none, 120-164 = faint dried herbs, 165-209 = garrigue, 210-255 = medicinal herbs
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

        ##  0-36 = sawdust, 37-73 = sandalwood, 74-110 = baking spice, 111-147 = vanilla,
        ##  148-184 = caramel, 185-221 = mocha, 222-255 = coffee
        ##  for unoaked wines, default is 100
        self.oak_aroma = oak_aroma

        ##  0-89 = none, 90-131 = faint, 132-173 = moderate, 174-215 = strong, 216-255 = intense
        self.oak_intensity = oak_intensity

        ##  comma separated string
        ##  display = text
        self.aroma_other = aroma_other

    def __repr__(self):
        class_name = type(self).__name__
        return f"Wine({', '.join(f'{k}={v}' for k, v in vars(self).items())})"
    
    def get_label_color(self):
        return self.label_color
    
    def get_clarity(self):
        return self.clarity
    
    # finish appearance once this program has a graphical display
    def get_appearance(self):
        return f"{self.appearance_red},{self.appearance_green},{self.appearance_blue}"

    def get_appearance_other(self):
        return self.appearance_other
    
    def get_condition(self):
        return self.condition
    
    def get_nose_intensity(self):
        return self.nose_intensity
    
    def get_development(self):
        return self.nose_intensity

    def get_petillance(self):
        return self.petillance

    def get_sweetness(self):
        return self.sweetness

    def get_acidity(self):
        return self.acidity

    def get_alcohol(self):
        return self.alcohol

    def get_body(self):
        return self.body

    def get_tannin_or_bitterness(self):
        return self.tannin_or_bitterness

    def get_finish(self):
        return self.finish
    
    def get_fruit_color(self):
        return self.fruit_color

    def get_fruit_family(self):
        return self.fruit_family

    def get_fruit_ripeness(self):
        return self.fruit_ripeness

    def get_fruit_subcondition(self):
        return self.fruit_subcondition

    def get_floral(self):
        return self.floral

    def get_herbaceous(self):
        return self.herbaceous

    def get_herbal(self):
        return self.herbal

    def get_earth_organic(self):
        return self.earth_organic

    def get_earth_inorganic(self):
        return self.earth_inorganic

    def get_grape_spice(self):
        return self.grape_spice

    def get_oak_aroma(self):
        return self.oak_aroma
    
    def get_oak_intensity(self):
        return self.oak_intensity
    
    def get_aroma_other(self):
        return self.aroma_other
    
    # repeating myself for encapsulation
    def get_primary_country(self):
        return self.country.split(",")[0]

    def get_primary_grape(self):
        return self.grapes.split(",")[0]

    def get_primary_region(self):
        return self.region.split(",")[0]
    
    def get_primary_appellation(self):
        return self.appellation.split(",")[0]
    
    def get_secondary_grapes(self):
        split_grapes = self.grapes.split(",")
        if len(split_grapes) <= 1:
            return False
        else:
            return split_grapes[1:]

