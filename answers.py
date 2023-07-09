from Levenshtein import distance as dist

class Answers:

    OLD_WORLD = ("france", "italy", "spain", "germany", "greece")
    NEW_WORLD = ("usa", "australia", "new zealand", "argentina")

    def __init__(self, grape, country, region, appellation, vintage):
        self.grape = grape
        self.country = country
        self.region = region
        self.appellation = appellation
        self.vintage = vintage
        
        self.grape_result = False
        self.grape_secondary_result = False
        self.country_result = False
        self.world_result = False
        self.region_result = False
        self.appellation_result = False
        self.vintage_result = False

        # this is only used if the user doesn't ID the country correctly
        self.is_old_world = False

        self.grape_score = 0
        self.country_score = 0
        self.region_score = 0
        self.appellation_score = 0
        self.vintage_score = 0
        self.total_score = 0
    
    def get_formatted_results(self, wine_obj):
        formatted_output = []

        formatted_output.append(f"The primary grape is {wine_obj.get_primary_grape()}, you are ")
        if not self.grape_result:
            formatted_output.append(f"in")
        formatted_output.append(f"correct")
        if self.grape_secondary_result:
            formatted_output.append(f", but you identified a secondary grape")
        formatted_output.append(f".\n")
        
        formatted_output.append(f"The country is {wine_obj.get_primary_country()}, you are ")
        if not self.country_result:
            formatted_output.append(f"in")
        formatted_output.append(f"correct")
        if self.world_result:
            formatted_output.append(f", but you correctly identified the wine as ")
            if self.is_old_world:
                formatted_output.append(f"old")
            formatted_output.append(f" world")
        formatted_output.append(f".\n")
        
        formatted_output.append(f"The region is {wine_obj.get_primary_region()}, you are ")
        if not self.region_result:
            formatted_output.append(f"in")
        formatted_output.append(f"correct.\n")

        formatted_output.append(f"The appellation is {wine_obj.get_primary_appellation()}, you are ")
        if not self.appellation_result:
            formatted_output.append(f"in")
        formatted_output.append(f"correct.\n")

        formatted_output.append(f"The vintage is {wine_obj.vintage}, you are ")
        if not self.vintage_result:
            formatted_output.append(f"in")
        formatted_output.append(f"correct.\n")
    
        formatted_output.append(f"Your score: {self.total_score} / 100\n")
    
        return formatted_output

    def check_user_answers(self, wine_obj):
        if self.check_grape(wine_obj):
            self.grape_result = True

        if self.check_country(wine_obj):
            self.country_result = True
        
        if self.check_world(wine_obj):
            self.world_result = True
        
        if self.check_region(wine_obj):
            self.region_result = True
        
        if self.check_appellation(wine_obj):
            self.appellation_result = True
        
        if self.check_vintage(wine_obj):
            self.vintage_result = True

    def check_grape(self, wine):
        if self.check_aliases(self.grape, wine.get_primary_grape().lower()):
            self.update_attribute("grape", wine.get_primary_grape())
            return True
        else:
            if self.check_secondary_grapes(wine):
                self.grape_secondary_result = True
        return False
    
    def check_secondary_grapes(self, wine):
        checked_grapes = wine.get_secondary_grapes()
        if not checked_grapes:
            return False
        else:
            for grape in checked_grapes:
                if self.check_aliases(self.grape, grape):
                    return True
        return False


    def check_country(self, wine):
        if self.check_aliases(self.country, wine.country):
            self.update_attribute("country", wine.get_primary_country())
            return True
        else:
            self.world_result = self.check_world(wine)
            return False
    
    #   unlike check_country, this requires perfect user input
    #   not a difficult fix but not necessary once uinput becomes menu-based
    #   which is coming soon
    def check_world(self, wine):
        if wine.get_primary_country().lower() in self.OLD_WORLD:
            if self.country in self.OLD_WORLD:
                self.is_old_world = True
                return True
        else:
            if self.country in self.NEW_WORLD:
                return True
        return False

    def check_region(self, wine):
        if self.check_aliases(self.region, wine.region):
            self.update_attribute("region", wine.get_primary_region())
            return True
        else:
            return False

    def check_appellation(self, wine):
        if self.check_aliases(self.appellation, wine.appellation):
            self.update_attribute("appellation", wine.get_primary_appellation())
            return True
        else:
            return False

    def check_vintage(self, wine):
        if str(self.vintage) == str(wine.vintage):
            return True
        else:
            return False
    
    # checks whether the input string is in the list of accepted answers
    def check_aliases(self, input_string, comma_separated_string):
        check = comma_separated_string.split(",")
        for item in check:
            if dist(input_string.lower(), item.lower()) <= 1:
                return True
        return False
        
    def get_results_list(self):
        results_list = []
        results_list.append(self.grape_result)
        results_list.append(self.country_result)
        results_list.append(self.region_result)
        results_list.append(self.appellation_result)
        results_list.append(self.vintage_result)
        return results_list
    
    # this doesn't need to be its own function with the current implementation
    # but I'm encapsulating it for maintainability
    def update_attribute(self, attribute_name, correct_value):
        setattr(self, attribute_name, correct_value)
    
    def update_score(self, wine_obj):
        self.total_score = (
            self.score_grape() + self.score_country() + self.score_region() +
            self.score_appellation() + self.score_vintage(wine_obj)
        )
    
    def score_grape(self):
        if self.grape_result:
            return 35
        elif self.grape_secondary_result:
            return 15
        else:
            return 0
    
    def score_country(self):
        if self.country_result:
            return 25
        elif self.world_result:
            return 10
        else:
            return 0
    
    def score_region(self):
        if self.region_result:
            return 20
        else:
            return 0
    
    def score_appellation(self):
        if self.appellation_result:
            return 10
        else:
            return 0
    
    def score_vintage(self, wine_obj):
        response = int(self.vintage)
        vintage = wine_obj.vintage
        if response == vintage:
            return 10
        elif response == vintage + 1 or response == vintage - 1:
            return 5
        else:
            return 0