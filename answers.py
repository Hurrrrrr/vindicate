class Answers:

    def __init__(self, country, region, appellation, grape, vintage):
        self.country = country
        self.region = region
        self.appellation = appellation
        self.grape = grape
        self.vintage = vintage
        
        self.country_result = False
        self.region_result = False
        self.appellation_result = False
        self.grape_result = False
        self.vintage_result = False
    
    # rewrite these to not require self.country as parameter
    def check_user_answers(self, wine_obj):
        if self.check_country(self.country, wine_obj):
            self.country_result = True
        
        if self.check_region(self.region, wine_obj):
            self.region_result = True
        
        if self.check_appellation(self.appellation, wine_obj):
            self.appellation_result = True
        
        if self.check_grape(self.grape, wine_obj):
            self.grape_result = True
        
        if self.check_vintage(self.vintage, wine_obj):
            self.vintage_result = True
        
        # move this to its own function
        print(self.country_result)
        print(self.region_result)
        print(self.appellation_result)
        print(self.grape_result)
        print(self.vintage_result)
    
    def get_results(self, wine_obj):
        results_list = []
        results_list.append(self.country_result)
        results_list.append(self.region_result)
        results_list.append(self.appellation_result)
        results_list.append(self.grape_result)
        results_list.append(self.vintage_result)
        return results_list


    # see note above in check_user_answers
    def check_country(self, user_answer, wine):
        if user_answer.lower() == wine.country.lower():
            return True
        else:
            return False

    def check_region(self, user_answer, wine):
        if user_answer.lower() == wine.region.lower():
            return True
        else:
            return False

    def check_appellation(self, user_answer, wine):
        if user_answer.lower() == wine.appellation.lower():
            return True
        else:
            return False

    def check_grape(self, user_answer, wine):
        if user_answer.lower() == wine.grapes.lower():
            return True
        else:
            return False

    def check_vintage(self, user_answer, wine):
        if user_answer == wine.vintage:
            return True
        else:
            return False