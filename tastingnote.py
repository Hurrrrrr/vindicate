from numpy.random import normal

class TastingNote:

    # this probably needs to be refactored. the wine getters should just
    # output a numerical value, whereas these values should be converted
    # to strings here. this allows the randomization to happen here
    # instead of in the wine class where it would alter the values
    # of the wine itself which is not logical

    # is the wine object here necessary if this is going to have all the
    # attributes needed?
    # add accuracy to here and main
    def __init__(self, wine):
        self.wine = wine

        # temporary fixed value until this becomes a parameter!!
        self.accuracy = 3

        self.label_color = wine.label_color
        self.clarity = wine.clarity
        self.appearance_other = wine.appearance_other
        self.condition = wine.condition
        self.nose_intensity = wine.nose_intensity
        self.development = wine.development
        self.petillance = wine.petillance
        self.sweetness = wine.sweetness
        self.acidity = wine.acidity
        self.alcohol = wine.alcohol
        self.body = wine.body
        self.tannin_or_bitterness = wine.tannin_or_bitterness
        self.finish = wine.finish
        self.fruit_color = wine.fruit_color
        self.fruit_family = wine.fruit_family
        self.fruit_condition = wine.fruit_condition
        self.fruit_subcondition = wine.fruit_subcondition
        self.floral = wine.floral
        self.herbaceous = wine.herbaceous
        self.herbal = wine.herbal
        self.earth_organic = wine.earth_organic
        self.earth_inorganic = wine.earth_inorganic
        self.grape_spice = wine.grape_spice
        self.oak = wine.oak
        self.aroma_other = wine.aroma_other

        # will be implemented once display is graphical
        self.appearance_red = wine.appearance_red
        self.appearance_green = wine.appearance_green
        self.appearance_blue = wine.appearance_blue


    def generate_description(self):
        output = []

        output.append(
            f"This is a {self.get_petillance()}, "
            f"{self.get_clarity()} "
            f"{self.get_label_color()} wine.\n"
            f"The nose is of {self.get_nose_intensity()} "
            f"intensity and it is {self.get_development()}.\n"
            f"The wine is {self.get_sweetness()}, "
            f"Acidity is {self.get_acidity()}, "
            f"Alcohol is {self.get_alcohol()}, "
            f"Body is {self.get_body()}, "
        )
        if self.label_color == "Red":
            output.append(f"Tannin is {self.get_tannin_or_bitterness()}, ")
        elif self.check_for_bitterness():
            output.append(f"Bitterness is {self.get_tannin_or_bitterness()}, ")
        
        output.append(
            f"and the finish is {self.get_finish()}.\n"
            f"The wine shows {self.get_fruit_condition()}, "
            f"{self.get_fruit_color()}, {self.get_fruit_family()} fruit"
        )

        if self.check_for_fruit_subcondition():
            output.append(
                f", with a {self.get_fruit_subcondition()} character.\n"
            )
        else:
            output.append(".\n")

        if self.check_for_floral() and self.check_for_herbaceous():    
            output.append(
                f"The wine shows a {self.get_floral()} florality, "
                f"and {self.get_herbaceous()} herbaceousness.\n"
            )
        elif self.check_for_floral():
            output.append(f"The wine shows a {self.get_floral()} florality.\n")
        elif self.check_for_herbaceous():
            output.append(
                f"The wine shows a {self.get_herbaceous()} herbaceousness.\n"
            )
        
        if self.check_for_earth_organic() and self.check_for_earth_inorganic():
            output.append(
                f"It has a {self.get_earth_organic()} earthiness, "
                f"and a {self.get_earth_inorganic()} minerality.\n"
            )
        elif self.check_for_earth_organic():
            output.append(f"It has a {self.get_earth_organic()} earthiness.\n")
        elif self.check_for_earth_inorganic():
            output.append(f"It has a {self.get_earth_inorganic()} minerality.\n")
        
        misc_list = self.generate_misc_list()
        misc_length = len(misc_list)

        if misc_length > 0:
            output.append(f"Finally, there are notes of ")
            if misc_length == 1:
                output.append(f"{misc_list[0]}.\n")
            elif misc_length == 2:
                output.append(f"{misc_list[0]} and {misc_list[1]}.")
            else:
                for i in range(misc_length):
                    output.append(f"{misc_list[i]}")
                    if i == misc_length - 2:
                        output.append(f" and ")
                    elif i == misc_length - 1:
                        output.append(".")
                    else:
                        output.append(", ")
        
        output.append('\n')

        output_string = ''.join(output)
        return output_string
    
    def get_petillance(self):
        if self.petillance >= 94:
            return "Sparkling"
        elif self.petillance >= 39:
            return "Semi-Sparkling"
        elif self.petillance >= 20:
            return "Spritzy"
        elif self.petillance >= 0:
            return "Still"
        else:
            return "Error outputting get_petillance"
    
    def get_clarity(self):
        return self.clarity
    
    def get_label_color(self):
        return self.label_color
    
    def get_nose_intensity(self):
        if self.nose_intensity >= 204:
            return "High"
        elif self.nose_intensity >= 153:
            return "Medium-Plus"
        elif self.nose_intensity >= 102:
            return "Medium"
        elif self.nose_intensity >= 51:
            return "Medium-Minus"
        elif self.nose_intensity >= 0:
            return "Low"
        else:
            return "Error outputting nose_intensity"
    
    def get_development(self):
        if self.development >= 170:
            return "Mature"
        elif self.development >= 85:
            return "Developing"
        elif self.development >= 0:
            return "Youthful" 
        else:
            return "Error outputting get_development"
    
    def get_sweetness(self):
        if self.sweetness >= 115:
            return "Very Sweet"
        elif self.sweetness >= 45:
            return "Sweet"
        elif self.sweetness >= 12:
            return "Medium-Sweet"
        elif self.sweetness >= 5:
            return "Medium-Dry"
        elif self.sweetness >= 0:
            return "Dry"
        else:
            return "Error outputting get_sweetness"
    
    def get_acidity(self):
        if self.acidity >= 204:
            return "High"
        elif self.acidity >= 153:
            return "Medium-Plus"
        elif self.acidity >= 102:
            return "Medium"
        elif self.acidity >= 51:
            return "Medium-Minus"
        elif self.acidity >= 0:
            return "Low"
        else:
            return "Error outputting get_acidity"
    
    def get_alcohol(self):
        return f"{self.alcohol / 10}%"
    
    def get_body(self):
        if self.body >= 204:
            return "Full"
        elif self.body >= 153:
            return "Medium-Plus"
        elif self.body >= 102:
            return "Medium"
        elif self.body >= 51:
            return "Medium-Minus"
        elif self.body >= 0:
            return "Light"
        else:
            return "Error outputting get_body"
        
    def get_tannin_or_bitterness(self):
        if self.tannin_or_bitterness >= 204:
            return "High"
        elif self.tannin_or_bitterness >= 153:
            return "Medium-Plus"
        elif self.tannin_or_bitterness >= 102:
            return "Medium"
        elif self.tannin_or_bitterness >= 51:
            return "Medium-Minus"
        elif self.tannin_or_bitterness >= 30:
            return "Low"
        elif self.tannin_or_bitterness >= 0:
            return "None"
        else:
            return "Error outputting get_tannin_or_bitterness"
    
    def get_finish(self):
        if self.finish >= 204:
            return "Long"
        elif self.finish >= 153:
            return "Medium-Plus"
        elif self.finish >= 102:
            return "Medium"
        elif self.finish >= 51:
            return "Medium-Minus"
        elif self.finish >= 0:
            return "Short"
        else:
            return "Error outputting get_finish"
    
    def get_fruit_condition(self):
        if self.fruit_condition >= 204:
            return "Jammy"
        elif self.fruit_condition >= 153:
            return "Overripe"
        elif self.fruit_condition >= 102:
            return "Ripe"
        elif self.fruit_condition >= 51:
            return "Just-ripe"
        elif self.fruit_condition >= 0:
            return "Unripe"
        else:
            return "Error outputting get_fruit_condition"
        
    def get_fruit_color(self):
        if self.fruit_color >= 224:
            return "Blue"
        elif self.fruit_color >= 196:
            return "Black"
        elif self.fruit_color >= 168:
            return "Purple"
        elif self.fruit_color >= 140:
            return "Dark-Red"
        elif self.fruit_color >= 112:
            return "Red"
        elif self.fruit_color >= 84:
            return "Orange"
        elif self.fruit_color >= 56:
            return "Yellow"
        elif self.fruit_color >= 28:
            return "Green"
        elif self.fruit_color >= 0:
            return "Very-Green"
        else:
            return "Error outputting get_fruit_color"

    def get_fruit_family(self):
        if self.label_color == "White":
            if self.fruit_family >= 224:
                return "Melon"
            elif self.fruit_family >= 196:
                return "Sweet Tropical"
            elif self.fruit_family >= 168:
                return "Sweet Stone"
            elif self.fruit_family >= 140:
                return "Sweet Pome"
            elif self.fruit_family >= 112:
                return "Tart Tropical"
            elif self.fruit_family >= 84:
                return "Tart Stone"
            elif self.fruit_family >= 56:
                return "Sweet Citrus"
            elif self.fruit_family >= 28:
                return "Tart Pome"
            elif self.fruit_family >= 0:
                return "Tart Citrus"
            else:
                return "White fruit error"
        elif self.label_color == "Red":
            if self.fruit_family >= 192:
                return "Rich Fleshy"
            elif self.fruit_family >= 128:
                return "Sweet Stone"
            elif self.fruit_family >= 64:
                return "Tart Berry"
            elif self.fruit_family >= 0:
                return "Vegetal"
            else:
                return "Red fruit error"
        else:
            return "Fruit family error. (Only white/red are implemented yet)"

    def get_fruit_subcondition(self):
        if self.fruit_subcondition >= 217:
            return "Baked"
        elif self.fruit_subcondition >= 178:
            return "Cooked"
        elif self.fruit_subcondition >= 139:
            return "Dried"
        elif self.fruit_subcondition >= 100:
            return "Candied"
        elif self.fruit_subcondition >= 0:
            return "None"
        else:
            return "Error outputting get_fruit_subcondition"

    def get_floral(self):
        if self.label_color == "White":
            if self.floral >= 238:
                return "Soap"
            elif self.floral >= 210:
                return "Perfume"
            elif self.floral >= 182:
                return "Geranium"
            elif self.floral >= 154:
                return "Rose"
            elif self.floral >= 126:
                return "Jasmine"
            elif self.floral >= 98:
                return "Honeysuckle"
            elif self.floral >= 70:
                return "Faint White Flowers"
            elif self.floral >= 0:
                return "None"
            else:
                return "White floral error"
        elif self.label_color == "Red":
            if self.floral >= 225:
                return "Soap"
            elif self.floral >= 194:
                return "Perfume"
            elif self.floral >= 163:
                return "Lilac"
            elif self.floral >= 132:
                return "Rose"
            elif self.floral >= 101:
                return "Violets"
            elif self.floral >= 70:
                return "Faint Purple Flowers"
            elif self.floral >= 0:
                return "None"
            else:
                return "Red floral error"
        else:
            return "Floral error. (Only white/red are implemented yet)"

    def get_herbaceous(self):
        if self.herbaceous >= 212:
            return "Green Bell Pepper"
        elif self.herbaceous >= 168:
            return "Grassy"
        elif self.herbaceous >= 124:
            return "Asparagus"
        elif self.herbaceous >= 80:
            return "Faint Green"
        elif self.herbaceous >= 0:
            return "None"
        else:
            return "Error outputting get_herbaceous"

    def get_earth_organic(self):
        if self.earth_organic >= 216:
            return "Compost"
        elif self.earth_organic >= 174:
            return "Forest Floor"
        elif self.earth_organic >= 132:
            return "Potting Soil"
        elif self.earth_organic >= 90:
            return "White Mushroom"
        elif self.earth_organic >= 0:
            return "None"
        else:
            return "Error outputting get_earth_organic"

    def get_earth_inorganic(self):
        if self.earth_inorganic >= 230:
            return "Scraped Steel"
        elif self.earth_inorganic >= 202:
            return "Flinty"
        elif self.earth_inorganic >= 174:
            return "Chalky"
        elif self.earth_inorganic >= 146:
            return "Slatey"
        elif self.earth_inorganic >= 118:
            return "Wet Pavement"
        elif self.earth_inorganic >= 90:
            return "Wet Stone"
        elif self.earth_inorganic >= 0:
            return "None"
        else:
            return "Error outputting get_earth_inorganic"

    def get_herbal(self):
        if self.herbal >= 210:
            return "Medicinal Herbs"
        elif self.herbal >= 165:
            return "Resinous Herbs"
        elif self.herbal >= 120:
            return "Faint Dried Herbs"
        elif self.herbal >= 0:
            return "None"
        else:
            return "Error outputting get_herbal"
    
    def get_grape_spice(self):
        if self.grape_spice >= 226:
            return "White Pepper"
        elif self.grape_spice >= 198:
            return "Black Pepper"
        elif self.grape_spice >= 169:
            return "Black Licorice"
        elif self.grape_spice >= 140:
            return "Fennel"
        elif self.grape_spice >= 0:
            return "None"
        else:
            return "Error outputting get_grape_spice"
    
    def get_oak(self):
        if self.oak >= 230:
            return "Coffee"
        elif self.oak >= 205:
            return "Burnt Marshmallow"
        elif self.oak >= 180:
            return "Vanilla"
        elif self.oak >= 155:
            return "Oak Resin"
        elif self.oak >= 130:
            return "Sawdust"
        elif self.oak >= 105:
            return "Baking Spice"
        elif self.oak >= 0:
            return "None"
        else:
            return "Error outputting get_oak"
    
    def get_aroma_other(self):
        return self.aroma_other
    
    def check_for_bitterness(self):
        if self.get_tannin_or_bitterness() != "None":
            return True
        else:
            return False
    
    def check_for_fruit_subcondition(self):
        if self.get_fruit_subcondition() != "None":
            return True
        else:
            return False
    
    def check_for_floral(self):
        if self.get_floral() != "None":
            return True
        else:
            return False
    
    def check_for_herbaceous(self):
        if self.get_herbaceous() != "None":
            return True
        else:
            return False
    
    def check_for_herbal(self):
        if self.get_herbal() != "None":
            return True
        else:
            return False
    
    def check_for_earth_organic(self):
        if self.get_earth_organic() != "None":
            return True
        else:
            return False
    
    def check_for_earth_inorganic(self):
        if self.get_earth_inorganic() != "None":
            return True
        else:
            return False
    
    def check_for_grape_spice(self):
        if self.get_grape_spice() != "None":
            return True
        else:
            return False
    
    def check_for_oak(self):
        if self.get_oak() != "None":
            return True
        else:
            return False
    

    # these characteristics are all output together for user, so check how many
    # need to be displayed to determine formatting

    # we can't just use len() here because these return "None"
    # instead of None. should this change?
    def check_quantity_others(self):
        count = 0

        if self.check_for_oak():
            count += 1
        if self.check_for_grape_spice():
            count += 1
        if self.check_for_herbal():
            count += 1
        count += self.check_quantity_aroma_other()

        return count
    
    def check_quantity_aroma_other(self):
        if self.aroma_other == "None":
            return 0
        else:
            return len(self.aroma_other.split(','))
    
    def generate_aroma_other_list(self):
        output_list = self.aroma_other.split(',')
        return output_list
    
    # oak, grape_spice, herbal, and 0-9 aroma_other used in
    # final text output section
    def generate_misc_list(self):
        output_list = []

        if self.check_for_oak():
            output_list.append(self.get_oak())
        if self.check_for_grape_spice():
            output_list.append(self.get_grape_spice())
        if self.check_for_herbal():
            output_list.append(self.get_herbal())
        if self.check_quantity_aroma_other():
            for item in self.generate_aroma_other_list():
                output_list.append(item)
        
        return output_list


    def __repr__(self):
        return self.generate_description()