class TastingNote:

    def __init__(self, wine):
        self.wine = wine

    # todo: add petillance, create logic for "None" characteristics
    def generate_description(self):
        output = []

        output.append(
            f"This is a {self.wine.get_clarity()} "
            f"{self.wine.get_label_color()} wine."
        )
        output.append(
            f"The nose is of {self.wine.get_nose_intensity()} "
            f"intensity and it is {self.wine.get_development()}."
        )
        output.append(
            f"The wine is {self.wine.get_sweetness()}, "
            f"Acidity is {self.wine.get_acidity()}, "
            f"Alcohol is {self.wine.get_alcohol()}, "
            f"Body is {self.wine.get_body()}, "
            f"Tannin / Bitterness is {self.wine.get_tannin_or_bitterness()}, "
            f"and the finish is {self.wine.get_finish()}."
        )
        output.append(
            f"The wine shows {self.wine.get_fruit_condition()} "
            f"{self.wine.get_fruit_color()} {self.wine.get_fruit_family()} fruit, "
            f"with a {self.wine.get_fruit_subcondition()} character."
        )
        output.append(
            f"The wine shows a {self.wine.get_floral()} florality, "
            f"and {self.wine.get_herbaceous()} herbaceousness."
        )
        output.append(
            f"It has a {self.wine.get_earth_organic()} minerality, "
            f"a {self.wine.get_earth_inorganic()} earthiness."
        )
        output.append(
            f"Finally, there are notes of {self.wine.get_oak()}, "
            f"{self.wine.get_grape_spice()}, {self.wine.get_herbal()}, "
            f"and {self.wine.get_aroma_other()}."
        )

        output_string = ' '.join(output)
        return output_string

    def __repr__(self):
        return self.generate_description()