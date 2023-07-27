from Levenshtein import distance as dist

class UserAnswers:

    def __init__(self, grape, country, region, appellation, vintage):
        self.grape = grape
        self.country = country
        self.region = region
        self.appellation = appellation
        self.vintage = vintage

# this could be a static class (or helper functions) but this is more
# flexible for future uses
class ResultsLogic:

    OLD_WORLD = ("france", "italy", "spain", "germany", "greece")
    NEW_WORLD = ("usa", "australia", "new zealand", "argentina")

    def __init__(self, answers_obj, wine_obj):
        self.answers = answers_obj
        self.wine = wine_obj

        self.grape_result = False
        self.grape_secondary_result = False
        self.country_result = False
        self.world_result = False
        self.region_result = False
        self.appellation_result = False
        self.vintage_result = False
        self.vintage_offset = -1

        # this is only used if the user doesn't ID the country correctly
        self.is_old_world = False

        self.grape_score = 0
        self.country_score = 0
        self.region_score = 0
        self.appellation_score = 0
        self.vintage_score = 0
        self.total_score = 0
    


    def check_user_answers(self):
        if self.check_grape():
            self.grape_result = True

        if self.check_country():
            self.country_result = True
        elif self.check_world():
            self.world_result = True
        
        if self.check_region():
            self.region_result = True
        
        if self.check_appellation():
            self.appellation_result = True
        
        if self.check_vintage():
            self.vintage_result = True

    # checks if the user's grape answer is the primary grape or a secondary
    # grape, and also formats their answer (ie. "CHardonnay" to "chardonnay")
    def check_grape(self):
        if self.check_aliases(self.answers.grape, self.wine.get_primary_grape().lower()):
            self.update_attribute("answers.grape", self.wine.get_primary_grape())
            return True
        else:
            if self.check_secondary_grapes():
                self.grape_secondary_result = True
        return False
    
    def check_secondary_grapes(self):
        checked_grapes = self.wine.get_secondary_grapes()
        if not checked_grapes:
            return False
        else:
            for grape in checked_grapes:
                if self.check_aliases(self.answers.grape, grape):
                    return True
        return False


    def check_country(self):
        if self.check_aliases(self.answers.country, self.wine.country):
            self.update_attribute("answers.country", self.wine.get_primary_country())
            return True
        else:
            self.world_result = self.check_world()
            return False
    
    #   unlike check_country, this requires perfect user input
    #   not a difficult fix but not necessary for webapp
    def check_world(self):
        if self.wine.get_primary_country().lower() in self.OLD_WORLD:
            if self.answers.country in self.OLD_WORLD:
                self.is_old_world = True
                return True
        else:
            if self.answers.country in self.NEW_WORLD:
                return True
        return False

    def check_region(self):
        if self.check_aliases(self.answers.region, self.wine.region):
            self.update_attribute("answers.region", self.wine.get_primary_region())
            return True
        else:
            return False

    def check_appellation(self):
        if self.check_aliases(self.answers.appellation, self.wine.appellation):
            self.update_attribute("answers.appellation", self.wine.get_primary_appellation())
            return True
        else:
            return False

    def check_vintage(self):
        if str(self.answers.vintage) == str(self.wine.vintage):
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
    
    # this doesn't need to be its own function with the current implementation
    # but I'm encapsulating it for maintainability
    def update_attribute(self, attribute_name, correct_value):
        setattr(self, attribute_name, correct_value)

    # should this use its own attributes or a Results object?
    def get_formatted_results(self):
        formatted_output = []

        formatted_output.append(f"The primary grape is {self.wine.get_primary_grape()}, you are ")
        if not self.grape_result:
            formatted_output.append(f"in")
        formatted_output.append(f"correct")
        if self.grape_secondary_result:
            formatted_output.append(f", but you identified a secondary grape")
        formatted_output.append(f".\n")
        
        formatted_output.append(f"The country is {self.wine.get_primary_country()}, you are ")
        if not self.country_result:
            formatted_output.append(f"in")
        formatted_output.append(f"correct")
        if self.world_result:
            formatted_output.append(f", but you correctly identified the wine as ")
            if self.is_old_world:
                formatted_output.append(f"old")
            formatted_output.append(f" world")
        formatted_output.append(f".\n")
        
        formatted_output.append(f"The region is {self.wine.get_primary_region()}, you are ")
        if not self.region_result:
            formatted_output.append(f"in")
        formatted_output.append(f"correct.\n")

        formatted_output.append(f"The appellation is {self.wine.get_primary_appellation()}, you are ")
        if not self.appellation_result:
            formatted_output.append(f"in")
        formatted_output.append(f"correct.\n")

        formatted_output.append(f"The vintage is {self.wine.vintage}, you are ")
        if not self.vintage_result:
            formatted_output.append(f"in")
        formatted_output.append(f"correct")
        if self.vintage_offset > 0:
            formatted_output.append(f", you were off by {self.vintage_offset}")
        formatted_output.append(f".\n")
    
        formatted_output.append(f"Your score: {self.total_score} / 100\n")
    
        return formatted_output
    
    def update_score(self):
        self.total_score = (
            self.score_grape() + self.score_country() + self.score_region() +
            self.score_appellation() + self.score_vintage()
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
    
    def score_vintage(self):
        response = int(self.answers.vintage)
        vintage = self.wine.vintage
        self.vintage_offset = abs(response - vintage)
        if response == vintage:
            return 10
        elif response == vintage + 1 or response == vintage - 1:
            return 5
        else:
            return 0
    
    def create_results_list(self):
        results_list = []
        results_list.append(self.grape_result)
        results_list.append(self.country_result)
        results_list.append(self.region_result)
        results_list.append(self.appellation_result)
        results_list.append(self.vintage_result)
        return results_list

    def create_scores_list(self):
        output_list = []
        output_list.append(self.score_grape())
        output_list.append(self.score_country())
        output_list.append(self.score_region())
        output_list.append(self.score_appellation())
        output_list.append(self.score_vintage())
        return output_list

    def create_results_obj(self, list_of_answer_result_bools, list_of_scores):
        return UserResults(*(list_of_answer_result_bools + list_of_scores))
        
# stores user answer results and their scores for DB
class UserResults:

    def __init__(self, grape, country, region, appellation, vintage,
    grape_score, country_score, region_score, appellation_score,
    vintage_score):

        self.grape = grape
        self.country = country
        self.region = region
        self.appellation = appellation
        self.vintage = vintage

        self.grape_score = grape_score
        self.country_score = country_score
        self.region_score = region_score,
        self.appellation_score = appellation_score
        self.vintage_score = vintage_score