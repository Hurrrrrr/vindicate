from Levenshtein import distance as dist

class Answers:

    def __init__(self, grape, country, region, appellation, vintage):
        self.grape = grape
        self.country = country
        self.region = region
        self.appellation = appellation
        self.vintage = vintage
        
        self.grape_result = False
        self.country_result = False
        self.region_result = False
        self.appellation_result = False
        self.vintage_result = False
    
    def check_user_answers(self, wine_obj):
        if self.check_grape(wine_obj):
            self.grape_result = True

        if self.check_country(wine_obj):
            self.country_result = True
        
        if self.check_region(wine_obj):
            self.region_result = True
        
        if self.check_appellation(wine_obj):
            self.appellation_result = True
        
        if self.check_vintage(wine_obj):
            self.vintage_result = True

    def check_grape(self, wine):
        if dist(self.grape.lower(), wine.get_primary_grape().lower()) <= 1:
            return True
        else:
            return False

    def check_country(self, wine):
        if dist(self.country.lower(), wine.country.lower()) <= 1:
            return True
        else:
            return False

    def check_region(self, wine):
        if dist(self.region.lower(), wine.region.lower()) <= 1:
            return True
        else:
            return False

    def check_appellation(self, wine):
        if dist(self.appellation.lower(), wine.appellation.lower()) <= 1:
            return True
        else:
            return False

    def check_vintage(self, wine):
        if str(self.vintage) == str(wine.vintage):
            return True
        else:
            return False
        
    def get_results_list(self):
        results_list = []
        results_list.append(self.grape_result)
        results_list.append(self.country_result)
        results_list.append(self.region_result)
        results_list.append(self.appellation_result)
        results_list.append(self.vintage_result)
        return results_list
    
    def get_formatted_results(self, wine_obj):
        formatted_output = []

        formatted_output.append(f"The primary grape is {wine_obj.get_primary_grape()}, you are ")
        if not self.grape_result:
            formatted_output.append(f"in")
        formatted_output.append(f"correct.\n")
        
        formatted_output.append(f"The country is {wine_obj.country}, you are ")
        if not self.country_result:
            formatted_output.append(f"in")
        formatted_output.append(f"correct.\n")
        
        formatted_output.append(f"The region is {wine_obj.region}, you are ")
        if not self.region_result:
            formatted_output.append(f"in")
        formatted_output.append(f"correct.\n")

        formatted_output.append(f"The appellation is {wine_obj.appellation}, you are ")
        if not self.appellation_result:
            formatted_output.append(f"in")
        formatted_output.append(f"correct.\n")

        formatted_output.append(f"The vintage is {wine_obj.vintage}, you are ")
        if not self.vintage_result:
            formatted_output.append(f"in")
        formatted_output.append(f"correct.\n")
    
        return formatted_output