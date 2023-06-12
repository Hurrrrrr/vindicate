class TastingNote:

    def __init__(self, wine):
        self.wine = wine

    # todo: add petillance
    def generate_description(self):
        output = []

        output.append(
            f"This is a {self.wine.get_clarity()} "
            f"{self.wine.get_label_color()} wine.\n"
            f"The nose is of {self.wine.get_nose_intensity()} "
            f"intensity and it is {self.wine.get_development()}.\n"
            f"The wine is {self.wine.get_sweetness()}, "
            f"Acidity is {self.wine.get_acidity()}, "
            f"Alcohol is {self.wine.get_alcohol()}, "
            f"Body is {self.wine.get_body()}, "
        )
        if self.wine.label_color == "Red":
            output.append(f"Tannin is {self.wine.get_tannin_or_bitterness()}, ")
        elif self.wine.check_for_bitterness():
            output.append(f"Bitterness is {self.wine.get_tannin_or_bitterness()}, ")
        
        output.append(
            f"and the finish is {self.wine.get_finish()}.\n"
            f"The wine shows {self.wine.get_fruit_condition()}, "
            f"{self.wine.get_fruit_color()}, {self.wine.get_fruit_family()} fruit"
        )

        if self.wine.check_for_fruit_subcondition():
            output.append(
                f", with a {self.wine.get_fruit_subcondition()} character.\n"
            )
        else:
            output.append(".\n")

        if self.wine.check_for_floral() and self.wine.check_for_herbaceous():    
            output.append(
                f"The wine shows a {self.wine.get_floral()} florality, "
                f"and {self.wine.get_herbaceous()} herbaceousness.\n"
            )
        elif self.wine.check_for_floral():
            output.append(f"The wine shows a {self.wine.get_floral()} florality.\n")
        elif self.wine.check_for_herbaceous():
            output.append(
                f"The wine shows a {self.wine.get_herbaceous()} herbaceousness.\n"
            )
        
        if self.wine.check_for_earth_organic() and self.wine.check_for_earth_inorganic():
            output.append(
                f"It has a {self.wine.get_earth_organic()} earthiness, "
                f"and a {self.wine.get_earth_inorganic()} minerality.\n"
            )
        elif self.wine.check_for_earth_organic():
            output.append(f"It has a {self.wine.get_earth_organic()} earthiness.\n")
        elif self.wine.check_for_earth_inorganic():
            output.append(f"It has a {self.wine.get_earth_inorganic()} minerality.\n")
        
        misc_list = self.wine.generate_misc_list()
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

    def __repr__(self):
        return self.generate_description()