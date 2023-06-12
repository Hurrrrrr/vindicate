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