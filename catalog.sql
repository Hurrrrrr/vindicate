CREATE TABLE IF NOT EXISTS wines (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    scope INTEGER,
    style TEXT,
    label_color TEXT,
    country TEXT,
    region TEXT,
    appellation TEXT,
    grapes TEXT,
    vintage INTEGER,
    producer TEXT,
    bottling TEXT,
    clarity TEXT,
    appearance_red INTEGER,
    appearance_green INTEGER,
    appearance_blue INTEGER,
    appearance_other TEXT,
    condition TEXT,
    nose_intensity INTEGER,
    development INTEGER,
    petillance INTEGER,
    sweetness INTEGER,
    acidity INTEGER,
    alcohol INTEGER,
    body INTEGER,
    tannin_or_bitterness INTEGER,
    finish INTEGER,
    fruit_color INTEGER,
    fruit_family INTEGER,
    fruit_ripeness INTEGER,
    fruit_subcondition INTEGER,
    floral INTEGER,
    herbaceous INTEGER,
    herbal INTEGER,
    earth_organic INTEGER,
    earth_inorganic INTEGER,
    grape_spice INTEGER,
    oak_aroma INTEGER,
    oak_intensity INTEGER,
    aroma_other TEXT
);

INSERT INTO wines (
    scope,
    style,
    label_color,
    country,
    region,
    appellation,
    grapes,
    vintage,
    producer,
    bottling,
    clarity,
    appearance_red,
    appearance_green,
    appearance_blue,
    appearance_other,
    condition,
    nose_intensity,
    development,
    petillance,
    sweetness,
    acidity,
    alcohol,
    body,
    tannin_or_bitterness,
    finish,
    fruit_color,
    fruit_family,
    fruit_ripeness,
    fruit_subcondition,
    floral,
    herbaceous,
    herbal,
    earth_organic,
    earth_inorganic,
    grape_spice,
    oak_aroma,
    oak_intensity,
    aroma_other)
VALUES (
    0,                              -- scope
    'Table',                        -- style
    'White',                        -- color
    'USA',                          -- country
    'California',                   -- region
    'Napa Valley',                  -- appellation
    'Chardonnay',                   -- grape
    2021,                           -- vintage
    'None',                         -- producer
    'None',                         -- bottling
    'Clear',                        -- clarity
    255,                            -- appearance_red
    213,                            -- appearance_green
    0,                              -- appearance_blue
    'None',                         -- appearance_other
    'Sound',                        -- condition
    220,                            -- nose_intensity
    100,                            -- development
    0,                              -- petillance
    4,                              -- sweetness
    120,                            -- acidity
    146,                            -- alcohol
    210,                            -- body
    10,                             -- tannin_or_bitterness
    220,                            -- finish
    75,                             -- fruit_color
    190,                            -- fruit_family
    180,                            -- fruit_ripeness
    200,                            -- fruit_subcondition
    80,                             -- floral
    20,                             -- herbaceous
    180,                            -- herbal
    100,                            -- earth_organic
    80,                             -- earth_inorganic
    120,                            -- grape_spice
    140,                            -- oak_aroma
    225,                             -- oak_intensity
    'Buttered Popcorn,Toasted Coconut'                         -- aroma_other
), (
    0,
    'Table',
    'Red',
    'France',
    'Burgundy',
    'Borgogne',
    'Pinot Noir',
    2020,
    'None',
    'None',
    'Clear',
    128,
    0,
    21,
    'None',
    'Sound',
    120,
    90,
    0,
    2,
    165,
    134,
    140,
    90,
    130,
    125,
    80,
    105,
    60,
    30,
    0,
    30,
    80,
    30,
    50,
    100,
    0,
    'None'
), (
    0,
    'Table',
    'White',
    'Germany',
    'Mosel',
    'Mosel',
    'Riesling',
    2021,
    'None',
    'None',
    'Clear',
    247,
    255,
    204,
    'None',
    'Sound',
    175,
    30,
    0,
    25,
    220,
    105,
    60,
    0,
    170,
    50,
    100,
    90,
    50,
    100,
    70,
    80,
    70,
    155,
    130,
    100,
    0,
    'Petrol'
), (
    0,
    'Table',
    'Red',
    'France',
    'Bordeaux',
    'St-Julien',
    'Cabernet Sauvignon, Merlot',
    2018,
    'None',
    'None',
    'Clear',
    102,
    0,
    34,
    'None',
    'Sound',
    200,
    90,
    0,
    2,
    150,
    142,
    200,
    180,
    200,
    185,
    180,
    155,
    100,
    110,
    90,
    130,
    160,
    100,
    120,
    60,
    155,
    'Graphite,Pencil Shavings'
),  (
    3,                              -- scope
    'Table',                        -- style
    'White',                        -- color
    'Greece,gr33c3',                          -- country
    'Test Region,asdf,zxcv',                   -- region
    'Test App',                  -- appellation
    'Test Grape,tester,potato',        -- grapes
    2000,                           -- vintage
    'Test Producer',                -- producer
    'Test Bottling',                -- bottling
    'Clear',                        -- clarity
    200,                            -- appearance_red
    200,                            -- appearance_green
    0,                              -- appearance_blue
    'None',                     -- appearance_other
    'Sound',                        -- condition
    100,                            -- nose_intensity
    100,                             -- development
    100,                              -- petillance
    100,                              -- sweetness
    100,                            -- acidity
    100,                            -- alcohol
    100,                            -- body
    100,                             -- tannin_or_bitterness
    100,                            -- finish
    100,                             -- fruit_color
    100,                            -- fruit_family
    100,                            -- fruit_ripeness
    100,                            -- fruit_subcondition
    100,                             -- floral
    100,                             -- herbaceous
    100,                            -- herbal
    100,                            -- earth_organic
    100,                            -- earth_inorganic
    100,                            -- grape_spice
    100,                            -- oak_aroma
    100,                            -- oak_intensity
    'None'                         -- aroma_other
),  (
    0,
'Table',
'White',
'France',
'Burgundy',
'Chablis 1er Cru',
'Chardonnay',
2020,
'None',
'None',
'Clear',
0,
0,
0,
'None',
'Sound',
140,
95,
0,
2,
190,
128,
140,
10,
165,
75,
25,
130,
75,
80,
60,
30,
100,
190,
40,
100,
70,
'Cheese Rind'
),  (
    0,
'Table',
'White',
'France',
'Burgundy',
'Chassagne-Montrachet 1er cru',
'Chardonnay',
2020,
'None',
'None',
'Clear',
0,
0,
0,
'None',
'Sound',
185,
90,
0,
2,
165,
134,
160,
20,
200,
75,
180,
145,
90,
110,
20,
70,
100,
180,
90,
95,
145,
'Freshly-struck Match,Roast Hazelnut'
),  (
    0,
'Table',
'White',
'France',
'Loire',
'Vouvray',
'Chenin Blanc',
2021,
'None',
'None',
'Clear',
0,
0,
0,
'None',
'Sound',
145,
70,
5,
25,
165,
115,
150,
5,
145,
75,
160,
125,
125,
120,
20,
50,
110,
210,
120,
100,
70,
'Quince,Wet Wool'
), (
    0,
'Table',
'White',
'France',
'Alsace',
'Alsace Grand Cru',
'Gewurztraminer',
2019,
'None',
'None',
'Clear',
0,
0,
0,
'None',
'Sound',
250,
110,
0,
33,
90,
133,
215,
40,
240,
95,
195,
150,
100,
205,
0,
0,
70,
100,
155,
100,
70,
'Lychee,Orange Flower Water,Honey'
),  (
    0,
'Table',
'White',
'Italy',
'Veneto',
'Pinot Grigio Delle Venezie',
'Pinot Grigio',
2022,
'None',
'None',
'Clear',
0,
0,
0,
'None',
'Sound',
30,
20,
20,
4,
175,
118,
45,
5,
45,
75,
25,
115,
90,
50,
50,
0,
30,
60,
0,
100,
0,
'None'
),  (
    0,
'Table',
'White',
'New Zealand',
'Marlborough',
'Marlborough',
'Sauvignon Blanc',
2022,
'None',
'None',
'Clear',
0,
0,
0,
'None',
'Sound',
215,
20,
15,
3,
205,
135,
150,
5,
165,
30,
125,
110,
55,
80,
220,
40,
40,
100,
90,
100,
0,
'Gooseberry,Passion Fruit'
),  (
    0,
'Table',
'Red',
'France',
'Bordeaux',
'Saint-Emilion',
'Merlot,Cabernet Franc',
2019,
'None',
'None',
'Clear',
0,
0,
0,
'None',
'Sound',
135,
95,
0,
2,
140,
138,
166,
115,
140,
155,
205,
140,
110,
50,
80,
105,
155,
40,
90,
100,
165,
'None'
),  (
    0,
'Table',
'Red',
'France',
'Burgundy',
'Borgogne 1er Cru',
'Pinot Noir',
2020,
'None',
'None',
'Clear',
0,
0,
0,
'None',
'Sound',
165,
100,
0,
2,
160,
137,
160,
90,
175,
130,
175,
140,
90,
90,
30,
90,
160,
80,
75,
80,
135,
'None'
),  (
    0,
'Table',
'Red',
'France',
'Northern Rhone',
'Cote-Rotie',
'Syrah,Viognier',
2019,
'None',
'None',
'Clear',
0,
0,
0,
'None',
'Sound',
190,
115,
0,
2,
160,
137,
165,
135,
180,
240,
185,
145,
105,
115,
55,
100,
190,
100,
240,
100,
100,
'Smoked Meat,Olive'
), (
    0,
'Table',
'White',
'France',
'Loire',
'Sancerre',
'Sauvignon Blanc',
2021,
'None',
'None',
'Clear',
0,
0,
0,
'None',
'Sound',
130,
60,
10,
2,
160,
137,
160,
20,
160,
50,
120,
125,
75,
80,
180,
140,
100,
180,
30,
100,
20,
'None'
),  (
    0,
'Table',
'Red',
'France',
'Southern Rhone',
'Chateauneuf-Du-Pape',
'Grenache,Mourvedre,Syrah',
2019,
'None',
'None',
'Clear',
0,
0,
0,
'None',
'Sound',
200,
100,
0,
2,
125,
151,
215,
145,
215,
115,
210,
180,
195,
110,
0,
185,
150,
75,
185,
100,
60,
'Leather'
),  (
    0,
'Table',
'Red',
'Italy',
'Piedmont',
'Barolo',
'Nebbiolo',
2018,
'None',
'None',
'Clear',
0,
0,
0,
'None',
'Sound',
215,
105,
0,
2,
195,
144,
170,
215,
180,
75,
85,
120,
120,
150,
50,
220,
160,
100,
130,
85,
150,
'Tar,Potpourri'
),  (
    0,    -- scope
'Table',    -- style
'Red',    -- label_color
'Italy',    -- country
'Veneto',    -- region
'Amarone Della Valpolicella',    -- appellation
'Corvina,Corvinone,Rondinella',    -- grapes
2016,    -- vintage
'None',    -- producer
'None',    -- bottling
'Clear',    -- clarity
0,    -- appearance_red
0,    -- appearance_green
0,    -- appearance_blue
'None',    -- appearance_other
'Sound',    -- condition
230,    -- nose_intensity
160,    -- development
0,    -- petillance
10,    -- sweetness
165,    -- acidity
164,    -- alcohol
255,    -- body
55,    -- tannin_or_bitterness
240,    -- finish
100,    -- fruit_color
180,    -- fruit_family
200,    -- fruit_condition
155,    -- fruit_subcondition
115,    -- floral
60,    -- herbaceous
195,    -- herbal
195,    -- earth_organic
30,    -- earth_inorganic
175,    -- grape_spice
195,    -- oak_aroma
155,    -- oak_intensity
'Potpourri,Balsamic Vinegar'    -- aroma_other
),  (
    0,    -- scope
'Table',    -- style
'Red',    -- label_color
'Italy',    -- country
'Tuscany',    -- region
'Brunello Di Montalcino Riserva',    -- appellation
'Sangiovese',    -- grapes
2016,    -- vintage
'None',    -- producer
'None',    -- bottling
'Clear',    -- clarity
0,    -- appearance_red
0,    -- appearance_green
0,    -- appearance_blue
'None',    -- appearance_other
'Sound',    -- condition
180,    -- nose_intensity
150,    -- development
0,    -- petillance
2,    -- sweetness
165,    -- acidity
144,    -- alcohol
210,    -- body
155,    -- tannin_or_bitterness
195,    -- finish
65,    -- fruit_color
130,    -- fruit_family
145,    -- fruit_condition
125,    -- fruit_subcondition
60,    -- floral
30,    -- herbaceous
140,    -- herbal
185,    -- earth_organic
70,    -- earth_inorganic
140,    -- grape_spice
50,    -- oak_aroma
70,    -- oak_intensity
'Leather,Sun-Dried Tomato'    -- aroma_other
),  (
    0,    -- scope
'Table',    -- style
'Red',    -- label_color
'Spain',    -- country
'La Rioja',    -- region
'Rioja Gran Reserva',    -- appellation
'Tempranillo-Based Blend',    -- grapes
2011,    -- vintage
'None',    -- producer
'None',    -- bottling
'Clear',    -- clarity
0,    -- appearance_red
0,    -- appearance_green
0,    -- appearance_blue
'None',    -- appearance_other
'Sound',    -- condition
215,    -- nose_intensity
175,    -- development
0,    -- petillance
2,    -- sweetness
160,    -- acidity
142,    -- alcohol
170,    -- body
140,    -- tannin_or_bitterness
195,    -- finish
55,    -- fruit_color
120,    -- fruit_family
145,    -- fruit_condition
155,    -- fruit_subcondition
60,    -- floral
60,    -- herbaceous
100,    -- herbal
180,    -- earth_organic
65,    -- earth_inorganic
110,    -- grape_spice
55,    -- oak_aroma
200,    -- oak_intensity
'Dill,Coconut'    -- aroma_other
),  (
    0,    -- scope
'Table',    -- style
'Red',    -- label_color
'Usa',    -- country
'California',    -- region
'Russian River Valley',    -- appellation
'Pinot Noir',    -- grapes
2020,    -- vintage
'None',    -- producer
'None',    -- bottling
'Clear',    -- clarity
0,    -- appearance_red
0,    -- appearance_green
0,    -- appearance_blue
'None',    -- appearance_other
'Sound',    -- condition
215,    -- nose_intensity
75,    -- development
0,    -- petillance
5,    -- sweetness
160,    -- acidity
148,    -- alcohol
200,    -- body
65,    -- tannin_or_bitterness
200,    -- finish
110,    -- fruit_color
80,    -- fruit_family
185,    -- fruit_condition
120,    -- fruit_subcondition
55,    -- floral
40,    -- herbaceous
80,    -- herbal
70,    -- earth_organic
50,    -- earth_inorganic
90,    -- grape_spice
165,    -- oak_aroma
195,    -- oak_intensity
'Cola'    -- aroma_other
),  (
    0,    -- scope
'Table',    -- style
'Red',    -- label_color
'Usa',    -- country
'California',    -- region
'Napa Valley',    -- appellation
'Cabernet Sauvignon',    -- grapes
2019,    -- vintage
'None',    -- producer
'None',    -- bottling
'Opaque',    -- clarity
0,    -- appearance_red
0,    -- appearance_green
0,    -- appearance_blue
'None',    -- appearance_other
'Sound',    -- condition
210,    -- nose_intensity
70,    -- development
0,    -- petillance
4,    -- sweetness
145,    -- acidity
154,    -- alcohol
235,    -- body
220,    -- tannin_or_bitterness
225,    -- finish
230,    -- fruit_color
230,    -- fruit_family
190,    -- fruit_condition
70,    -- fruit_subcondition
50,    -- floral
55,    -- herbaceous
40,    -- herbal
50,    -- earth_organic
60,    -- earth_inorganic
100,    -- grape_spice
200,    -- oak_aroma
235,    -- oak_intensity
'Coconut,Cassis'    -- aroma_other
),  (
    0,    -- scope
'Table',    -- style
'Red',    -- label_color
'Argentina',    -- country
'Cuyo',    -- region
'Mendoza',    -- appellation
'Malbec',    -- grapes
2018,    -- vintage
'None',    -- producer
'None',    -- bottling
'Opaque',    -- clarity
0,    -- appearance_red
0,    -- appearance_green
0,    -- appearance_blue
'None',    -- appearance_other
'Sound',    -- condition
190,    -- nose_intensity
105,    -- development
0,    -- petillance
4,    -- sweetness
140,    -- acidity
151,    -- alcohol
220,    -- body
185,    -- tannin_or_bitterness
195,    -- finish
220,    -- fruit_color
230,    -- fruit_family
200,    -- fruit_condition
110,    -- fruit_subcondition
115,    -- floral
0,    -- herbaceous
40,    -- herbal
50,    -- earth_organic
30,    -- earth_inorganic
185,    -- grape_spice
190,    -- oak_aroma
240,    -- oak_intensity
'None'    -- aroma_other
),  (
    0,    -- scope
'Table',    -- style
'Red',    -- label_color
'Australia',    -- country
'South Australia',    -- region
'Barossa Valley',    -- appellation
'Syrah',    -- grapes
2019,    -- vintage
'None',    -- producer
'None',    -- bottling
'Opaque',    -- clarity
0,    -- appearance_red
0,    -- appearance_green
0,    -- appearance_blue
'None',    -- appearance_other
'Sound',    -- condition
250,    -- nose_intensity
75,    -- development
0,    -- petillance
5,    -- sweetness
160,    -- acidity
156,    -- alcohol
250,    -- body
75,    -- tannin_or_bitterness
250,    -- finish
250,    -- fruit_color
250,    -- fruit_family
210,    -- fruit_condition
230,    -- fruit_subcondition
115,    -- floral
0,    -- herbaceous
0,    -- herbal
40,    -- earth_organic
20,    -- earth_inorganic
230,    -- grape_spice
205,    -- oak_aroma
250,    -- oak_intensity
'Smoked Meat'    -- aroma_other
),  (
    0,    -- scope
'Table',    -- style
'Red',    -- label_color
'New Zealand',    -- country
'South Island',    -- region
'Central Otago',    -- appellation
'Pinot Noir',    -- grapes
2020,    -- vintage
'None',    -- producer
'None',    -- bottling
'Clear',    -- clarity
0,    -- appearance_red
0,    -- appearance_green
0,    -- appearance_blue
'None',    -- appearance_other
'Sound',    -- condition
185,    -- nose_intensity
70,    -- development
0,    -- petillance
4,    -- sweetness
165,    -- acidity
140,    -- alcohol
160,    -- body
80,    -- tannin_or_bitterness
190,    -- finish
110,    -- fruit_color
230,    -- fruit_family
140,    -- fruit_condition
50,    -- fruit_subcondition
65,    -- floral
70,    -- herbaceous
110,    -- herbal
100,    -- earth_organic
100,    -- earth_inorganic
100,    -- grape_spice
85,    -- oak_aroma
145,    -- oak_intensity
'None'    -- aroma_other
)   (
    1,    -- scope
'Table',    -- style
'White',    -- label_color
'Spain',    -- country
'Galicia',    -- region
'Rias Baixas',    -- appellation
'Albarino',    -- grapes
2021,    -- vintage
'None',    -- producer
'None',    -- bottling
'Clear',    -- clarity
245,    -- appearance_red
255,    -- appearance_green
102,    -- appearance_blue
'None',    -- appearance_other
'Sound',    -- condition
130,    -- nose_intensity
65,    -- development
15,    -- petillance
3,    -- sweetness
170,    -- acidity
134,    -- alcohol
145,    -- body
60,    -- tannin_or_bitterness
140,    -- finish
155,    -- fruit_color
95,    -- fruit_family
130,    -- fruit_condition
70,    -- fruit_subcondition
110,    -- floral
50,    -- herbaceous
100,    -- herbal
60,    -- earth_organic
105,    -- earth_inorganic
110,    -- grape_spice
100,    -- oak_aroma
30,    -- oak_intensity
'Stale Beer'    -- aroma_other
)   (
    1,    -- scope
'Table',    -- style
'White',    -- label_color
'Australia',    -- country
'Western Australia',    -- region
'Margaret River',    -- appellation
'Chardonnay',    -- grapes
2020,    -- vintage
'None',    -- producer
'None',    -- bottling
'Clear',    -- clarity
255,    -- appearance_red
234,    -- appearance_green
128,    -- appearance_blue
'None',    -- appearance_other
'Sound',    -- condition
210,    -- nose_intensity
95,    -- development
5,    -- petillance
3,    -- sweetness
190,    -- acidity
146,    -- alcohol
190,    -- body
25,    -- tannin_or_bitterness
215,    -- finish
110,    -- fruit_color
185,    -- fruit_family
155,    -- fruit_condition
100,    -- fruit_subcondition
55,    -- floral
0,    -- herbaceous
0,    -- herbal
60,    -- earth_organic
100,    -- earth_inorganic
30,    -- grape_spice
125,    -- oak_aroma
180,    -- oak_intensity
'Toast,Fresh Struck Match,Brioche'    -- aroma_other
)   (
    1,    -- scope
'Table',    -- style
'White',    -- label_color
'France',    -- country
'Burgundy',    -- region
'Macon',    -- appellation
'Chardonnay',    -- grapes
2020,    -- vintage
'None',    -- producer
'None',    -- bottling
'Clear',    -- clarity
255,    -- appearance_red
255,    -- appearance_green
153,    -- appearance_blue
'None',    -- appearance_other
'Sound',    -- condition
130,    -- nose_intensity
105,    -- development
0,    -- petillance
2,    -- sweetness
140,    -- acidity
138,    -- alcohol
165,    -- body
25,    -- tannin_or_bitterness
145,    -- finish
105,    -- fruit_color
80,    -- fruit_family
140,    -- fruit_condition
90,    -- fruit_subcondition
80,    -- floral
20,    -- herbaceous
100,    -- herbal
90,    -- earth_organic
105,    -- earth_inorganic
50,    -- grape_spice
100,    -- oak_aroma
105,    -- oak_intensity
'Cream'    -- aroma_other
)   (
    1,    -- scope
'Table',    -- style
'White',    -- label_color
'France',    -- country
'Loire',    -- region
'Savennieres',    -- appellation
'Chenin Blanc',    -- grapes
2019,    -- vintage
'None',    -- producer
'None',    -- bottling
'Clear',    -- clarity
255,    -- appearance_red
244,    -- appearance_green
128,    -- appearance_blue
'None',    -- appearance_other
'Sound',    -- condition
180,    -- nose_intensity
150,    -- development
0,    -- petillance
2,    -- sweetness
165,    -- acidity
144,    -- alcohol
210,    -- body
40,    -- tannin_or_bitterness
220,    -- finish
115,    -- fruit_color
165,    -- fruit_family
140,    -- fruit_condition
155,    -- fruit_subcondition
135,    -- floral
0,    -- herbaceous
105,    -- herbal
125,    -- earth_organic
210,    -- earth_inorganic
120,    -- grape_spice
100,    -- oak_aroma
60,    -- oak_intensity
'Quince,Honey'    -- aroma_other
)   (
    1,    -- scope
'Table',    -- style
'White',    -- label_color
'Austria',    -- country
'Niederosterreich',    -- region
'Wachau',    -- appellation
'Gruner Veltliner',    -- grapes
2021,    -- vintage
'None',    -- producer
'None',    -- bottling
'Clear',    -- clarity
255,    -- appearance_red
255,    -- appearance_green
153,    -- appearance_blue
'None',    -- appearance_other
'Sound',    -- condition
145,    -- nose_intensity
75,    -- development
10,    -- petillance
2,    -- sweetness
160,    -- acidity
125,    -- alcohol
130,    -- body
65,    -- tannin_or_bitterness
165,    -- finish
95,    -- fruit_color
160,    -- fruit_family
130,    -- fruit_condition
100,    -- fruit_subcondition
90,    -- floral
90,    -- herbaceous
90,    -- herbal
80,    -- earth_organic
100,    -- earth_inorganic
240,    -- grape_spice
100,    -- oak_aroma
45,    -- oak_intensity
'Root Vegetable'    -- aroma_other
)   (
    1,    -- scope
'Table',    -- style
'White',    -- label_color
'France',    -- country
'Alsace',    -- region
'Alsace Grand Cru',    -- appellation
'Pinot Gris',    -- grapes
2018,    -- vintage
'None',    -- producer
'None',    -- bottling
'Clear',    -- clarity
255,    -- appearance_red
212,    -- appearance_green
128,    -- appearance_blue
'None',    -- appearance_other
'Sound',    -- condition
180,    -- nose_intensity
150,    -- development
0,    -- petillance
22,    -- sweetness
110,    -- acidity
141,    -- alcohol
235,    -- body
60,    -- tannin_or_bitterness
230,    -- finish
200,    -- fruit_color
210,    -- fruit_family
190,    -- fruit_condition
30,    -- fruit_subcondition
120,    -- floral
0,    -- herbaceous
110,    -- herbal
180,    -- earth_organic
100,    -- earth_inorganic
125,    -- grape_spice
100,    -- oak_aroma
70,    -- oak_intensity
'Honey,Saffron'    -- aroma_other
)   (
    1,    -- scope
'Table',    -- style
'White',    -- label_color
'Germany',    -- country
'Mosel',    -- region
'Mosel',    -- appellation
'Riesling',    -- grapes
2017,    -- vintage
'None',    -- producer
'None',    -- bottling
'Clear',    -- clarity
255,    -- appearance_red
255,    -- appearance_green
153,    -- appearance_blue
'None',    -- appearance_other
'Sound',    -- condition
210,    -- nose_intensity
80,    -- development
10,    -- petillance
6,    -- sweetness
215,    -- acidity
125,    -- alcohol
145,    -- body
0,    -- tannin_or_bitterness
230,    -- finish
105,    -- fruit_color
125,    -- fruit_family
125,    -- fruit_condition
50,    -- fruit_subcondition
105,    -- floral
60,    -- herbaceous
100,    -- herbal
70,    -- earth_organic
160,    -- earth_inorganic
110,    -- grape_spice
100,    -- oak_aroma
0,    -- oak_intensity
'Petrol,Honey'    -- aroma_other
)   (
    1,    -- scope
'Table',    -- style
'White',    -- label_color
'France',    -- country
'Alsace',    -- region
'Alsace Grand Cru',    -- appellation
'Riesling',    -- grapes
2019,    -- vintage
'None',    -- producer
'None',    -- bottling
'Clear',    -- clarity
255,    -- appearance_red
250,    -- appearance_green
128,    -- appearance_blue
'None',    -- appearance_other
'Sound',    -- condition
200,    -- nose_intensity
90,    -- development
0,    -- petillance
9,    -- sweetness
210,    -- acidity
136,    -- alcohol
165,    -- body
20,    -- tannin_or_bitterness
215,    -- finish
150,    -- fruit_color
180,    -- fruit_family
145,    -- fruit_condition
100,    -- fruit_subcondition
115,    -- floral
0,    -- herbaceous
65,    -- herbal
65,    -- earth_organic
185,    -- earth_inorganic
130,    -- grape_spice
100,    -- oak_aroma
40,    -- oak_intensity
'Petrol,Honey'    -- aroma_other
)   (
    1,    -- scope
'Table',    -- style
'White',    -- label_color
'Australia',    -- country
'South Australia',    -- region
'Clare Valley',    -- appellation
'Riesling',    -- grapes
2022,    -- vintage
'None',    -- producer
'None',    -- bottling
'Clear',    -- clarity
245,    -- appearance_red
255,    -- appearance_green
128,    -- appearance_blue
'None',    -- appearance_other
'Sound',    -- condition
165,    -- nose_intensity
20,    -- development
20,    -- petillance
0,    -- sweetness
215,    -- acidity
122,    -- alcohol
75,    -- body
15,    -- tannin_or_bitterness
165,    -- finish
35,    -- fruit_color
15,    -- fruit_family
80,    -- fruit_condition
25,    -- fruit_subcondition
80,    -- floral
30,    -- herbaceous
60,    -- herbal
50,    -- earth_organic
240,    -- earth_inorganic
50,    -- grape_spice
100,    -- oak_aroma
0,    -- oak_intensity
'Petrol,Rubber'    -- aroma_other
)   (
    1,    -- scope
'Table',    -- style
'White',    -- label_color
'France',    -- country
'Bordeaux',    -- region
'Pessac-Leognan',    -- appellation
'Sauvignon Blanc,Semillon',    -- grapes
2019,    -- vintage
'None',    -- producer
'None',    -- bottling
'Clear',    -- clarity
255,    -- appearance_red
255,    -- appearance_green
115,    -- appearance_blue
'None',    -- appearance_other
'Sound',    -- condition
215,    -- nose_intensity
110,    -- development
0,    -- petillance
2,    -- sweetness
155,    -- acidity
140,    -- alcohol
180,    -- body
25,    -- tannin_or_bitterness
190,    -- finish
90,    -- fruit_color
125,    -- fruit_family
140,    -- fruit_condition
100,    -- fruit_subcondition
80,    -- floral
90,    -- herbaceous
130,    -- herbal
100,    -- earth_organic
105,    -- earth_inorganic
110,    -- grape_spice
50,    -- oak_aroma
165,    -- oak_intensity
'None'    -- aroma_other
)   (
    1,    -- scope
'Table',    -- style
'White',    -- label_color
'Argentina',    -- country
'Salta',    -- region
'Salta',    -- appellation
'Torrontes',    -- grapes
2022,    -- vintage
'None',    -- producer
'None',    -- bottling
'Clear',    -- clarity
255,    -- appearance_red
242,    -- appearance_green
204,    -- appearance_blue
'None',    -- appearance_other
'Sound',    -- condition
250,    -- nose_intensity
10,    -- development
15,    -- petillance
6,    -- sweetness
190,    -- acidity
138,    -- alcohol
165,    -- body
80,    -- tannin_or_bitterness
140,    -- finish
150,    -- fruit_color
215,    -- fruit_family
180,    -- fruit_condition
50,    -- fruit_subcondition
230,    -- floral
0,    -- herbaceous
100,    -- herbal
40,    -- earth_organic
75,    -- earth_inorganic
125,    -- grape_spice
100,    -- oak_aroma
0,    -- oak_intensity
'Canned Fruit Salad'    -- aroma_other
)   (
    1,    -- scope
'Table',    -- style
'White',    -- label_color
'France',    -- country
'Rhone',    -- region
'Condrieu',    -- appellation
'Viognier',    -- grapes
2021,    -- vintage
'None',    -- producer
'None',    -- bottling
'Clear',    -- clarity
255,    -- appearance_red
250,    -- appearance_green
102,    -- appearance_blue
'None',    -- appearance_other
'Sound',    -- condition
230,    -- nose_intensity
55,    -- development
5,    -- petillance
3,    -- sweetness
120,    -- acidity
142,    -- alcohol
190,    -- body
65,    -- tannin_or_bitterness
215,    -- finish
180,    -- fruit_color
185,    -- fruit_family
145,    -- fruit_condition
100,    -- fruit_subcondition
195,    -- floral
30,    -- herbaceous
65,    -- herbal
80,    -- earth_organic
125,    -- earth_inorganic
245,    -- grape_spice
90,    -- oak_aroma
145,    -- oak_intensity
'None'    -- aroma_other
)   (
    1,    -- scope
'Table',    -- style
'White',    -- label_color
'France',    -- country
'Loire',    -- region
'Muscadet Sevre Et Maine',    -- appellation
'Melon De Bourgogne',    -- grapes
2021,    -- vintage
'None',    -- producer
'None',    -- bottling
'Clear',    -- clarity
250,    -- appearance_red
255,    -- appearance_green
179,    -- appearance_blue
'None',    -- appearance_other
'Sound',    -- condition
80,    -- nose_intensity
40,    -- development
15,    -- petillance
2,    -- sweetness
165,    -- acidity
124,    -- alcohol
80,    -- body
20,    -- tannin_or_bitterness
120,    -- finish
65,    -- fruit_color
45,    -- fruit_family
80,    -- fruit_condition
90,    -- fruit_subcondition
60,    -- floral
30,    -- herbaceous
90,    -- herbal
65,    -- earth_organic
115,    -- earth_inorganic
50,    -- grape_spice
100,    -- oak_aroma
0,    -- oak_intensity
'Peanut Shells,Lager'    -- aroma_other
)   (
    1,    -- scope
'Table',    -- style
'White',    -- label_color
'France',    -- country
'Rhone',    -- region
'Chateauneuf-Du-Pape',    -- appellation
'Grenache Blanc,Roussanne,Bourboulenc,Clairette',    -- grapes
2021,    -- vintage
'None',    -- producer
'None',    -- bottling
'Clear',    -- clarity
255,    -- appearance_red
255,    -- appearance_green
128,    -- appearance_blue
'None',    -- appearance_other
'Sound',    -- condition
145,    -- nose_intensity
45,    -- development
0,    -- petillance
2,    -- sweetness
135,    -- acidity
147,    -- alcohol
210,    -- body
45,    -- tannin_or_bitterness
155,    -- finish
115,    -- fruit_color
185,    -- fruit_family
160,    -- fruit_condition
195,    -- fruit_subcondition
80,    -- floral
30,    -- herbaceous
150,    -- herbal
105,    -- earth_organic
95,    -- earth_inorganic
120,    -- grape_spice
100,    -- oak_aroma
70,    -- oak_intensity
'None'    -- aroma_other
)   (
    1,    -- scope
'Table',    -- style
'White',    -- label_color
'France',    -- country
'Jura',    -- region
'Arbois',    -- appellation
'Chardonnay',    -- grapes
2020,    -- vintage
'None',    -- producer
'None',    -- bottling
'Clear',    -- clarity
255,    -- appearance_red
236,    -- appearance_green
135,    -- appearance_blue
'None',    -- appearance_other
'Sound',    -- condition
165,    -- nose_intensity
130,    -- development
0,    -- petillance
2,    -- sweetness
160,    -- acidity
136,    -- alcohol
150,    -- body
25,    -- tannin_or_bitterness
160,    -- finish
105,    -- fruit_color
45,    -- fruit_family
120,    -- fruit_condition
130,    -- fruit_subcondition
90,    -- floral
25,    -- herbaceous
40,    -- herbal
185,    -- earth_organic
185,    -- earth_inorganic
115,    -- grape_spice
25,    -- oak_aroma
110,    -- oak_intensity
'Almond,Cider,Fenugreek'    -- aroma_other
)   (
    1,    -- scope
'Table',    -- style
'White',    -- label_color
'Greece',    -- country
'Aegean Islands',    -- region
'Santorini',    -- appellation
'Assyrtiko',    -- grapes
2022,    -- vintage
'None',    -- producer
'None',    -- bottling
'Clear',    -- clarity
255,    -- appearance_red
255,    -- appearance_green
115,    -- appearance_blue
'None',    -- appearance_other
'Sound',    -- condition
120,    -- nose_intensity
20,    -- development
5,    -- petillance
2,    -- sweetness
210,    -- acidity
144,    -- alcohol
195,    -- body
85,    -- tannin_or_bitterness
180,    -- finish
105,    -- fruit_color
15,    -- fruit_family
130,    -- fruit_condition
100,    -- fruit_subcondition
50,    -- floral
35,    -- herbaceous
40,    -- herbal
70,    -- earth_organic
215,    -- earth_inorganic
90,    -- grape_spice
100,    -- oak_aroma
80,    -- oak_intensity
'None'    -- aroma_other
)   (
    1,    -- scope
'Table',    -- style
'White',    -- label_color
'Spain',    -- country
'Rioja',    -- region
'Rioja Alta',    -- appellation
'Viura',    -- grapes
2014,    -- vintage
'None',    -- producer
'None',    -- bottling
'Clear',    -- clarity
255,    -- appearance_red
236,    -- appearance_green
153,    -- appearance_blue
'None',    -- appearance_other
'Sound',    -- condition
210,    -- nose_intensity
200,    -- development
0,    -- petillance
2,    -- sweetness
180,    -- acidity
133,    -- alcohol
155,    -- body
40,    -- tannin_or_bitterness
220,    -- finish
105,    -- fruit_color
70,    -- fruit_family
95,    -- fruit_condition
160,    -- fruit_subcondition
90,    -- floral
30,    -- herbaceous
100,    -- herbal
190,    -- earth_organic
130,    -- earth_inorganic
110,    -- grape_spice
50,    -- oak_aroma
195,    -- oak_intensity
'Almond,Coconut,Fenugreek,Dill'    -- aroma_other
)   (
    1,    -- scope
'Table',    -- style
'White',    -- label_color
'Portugal',    -- country
'Vinho Verde',    -- region
'Vinho Verde',    -- appellation
'Blend',    -- grapes
2022,    -- vintage
'None',    -- producer
'None',    -- bottling
'Clear',    -- clarity
247,    -- appearance_red
255,    -- appearance_green
204,    -- appearance_blue
'None',    -- appearance_other
'Sound',    -- condition
75,    -- nose_intensity
20,    -- development
25,    -- petillance
10,    -- sweetness
210,    -- acidity
108,    -- alcohol
40,    -- body
20,    -- tannin_or_bitterness
60,    -- finish
30,    -- fruit_color
25,    -- fruit_family
70,    -- fruit_condition
55,    -- fruit_subcondition
50,    -- floral
60,    -- herbaceous
40,    -- herbal
30,    -- earth_organic
95,    -- earth_inorganic
30,    -- grape_spice
100,    -- oak_aroma
0,    -- oak_intensity
'None'    -- aroma_other
)   (
    1,    -- scope
'Table',    -- style
'White',    -- label_color
'South Africa',    -- country
'Western Cape',    -- region
'Swartland',    -- appellation
'Chenin Blanc',    -- grapes
2021,    -- vintage
'None',    -- producer
'None',    -- bottling
'Clear',    -- clarity
255,    -- appearance_red
255,    -- appearance_green
128,    -- appearance_blue
'None',    -- appearance_other
'Sound',    -- condition
160,    -- nose_intensity
85,    -- development
5,    -- petillance
3,    -- sweetness
155,    -- acidity
139,    -- alcohol
170,    -- body
20,    -- tannin_or_bitterness
185,    -- finish
105,    -- fruit_color
160,    -- fruit_family
160,    -- fruit_condition
90,    -- fruit_subcondition
105,    -- floral
20,    -- herbaceous
70,    -- herbal
80,    -- earth_organic
100,    -- earth_inorganic
70,    -- grape_spice
130,    -- oak_aroma
150,    -- oak_intensity
'Quince'    -- aroma_other
)   (
    1,    -- scope
'Table',    -- style
'White',    -- label_color
'Usa',    -- country
'California',    -- region
'Napa Valley',    -- appellation
'Sauvignon Blanc',    -- grapes
2021,    -- vintage
'None',    -- producer
'None',    -- bottling
'Clear',    -- clarity
242,    -- appearance_red
255,    -- appearance_green
179,    -- appearance_blue
'None',    -- appearance_other
'Sound',    -- condition
170,    -- nose_intensity
20,    -- development
10,    -- petillance
5,    -- sweetness
145,    -- acidity
140,    -- alcohol
175,    -- body
35,    -- tannin_or_bitterness
155,    -- finish
80,    -- fruit_color
125,    -- fruit_family
165,    -- fruit_condition
60,    -- fruit_subcondition
60,    -- floral
100,    -- herbaceous
100,    -- herbal
55,    -- earth_organic
75,    -- earth_inorganic
20,    -- grape_spice
100,    -- oak_aroma
0,    -- oak_intensity
'Guava'    -- aroma_other
)   (
    1,    -- scope
'Table',    -- style
'White',    -- label_color
'Australia',    -- country
'New South Wales',    -- region
'Hunter Valley',    -- appellation
'Semillon',    -- grapes
2022,    -- vintage
'None',    -- producer
'None',    -- bottling
'Clear',    -- clarity
242,    -- appearance_red
255,    -- appearance_green
179,    -- appearance_blue
'None',    -- appearance_other
'Sound',    -- condition
140,    -- nose_intensity
10,    -- development
10,    -- petillance
2,    -- sweetness
240,    -- acidity
108,    -- alcohol
40,    -- body
10,    -- tannin_or_bitterness
160,    -- finish
20,    -- fruit_color
15,    -- fruit_family
30,    -- fruit_condition
45,    -- fruit_subcondition
75,    -- floral
60,    -- herbaceous
20,    -- herbal
30,    -- earth_organic
240,    -- earth_inorganic
20,    -- grape_spice
165,    -- oak_aroma
0,    -- oak_intensity
'Rubber'    -- aroma_other
)   (
    1,    -- scope
'Table',    -- style
'Red',    -- label_color
'France',    -- country
'Bordeaux',    -- region
'Pomerol',    -- appellation
'Merlot,Cabernet Franc',    -- grapes
2017,    -- vintage
'None',    -- producer
'None',    -- bottling
'Opaque',    -- clarity
102,    -- appearance_red
0,    -- appearance_green
34,    -- appearance_blue
'None',    -- appearance_other
'Sound',    -- condition
195,    -- nose_intensity
105,    -- development
0,    -- petillance
3,    -- sweetness
145,    -- acidity
146,    -- alcohol
195,    -- body
140,    -- tannin_or_bitterness
210,    -- finish
140,    -- fruit_color
210,    -- fruit_family
160,    -- fruit_condition
120,    -- fruit_subcondition
80,    -- floral
65,    -- herbaceous
70,    -- herbal
145,    -- earth_organic
55,    -- earth_inorganic
100,    -- grape_spice
195,    -- oak_aroma
200,    -- oak_intensity
'Pencil Shavings'    -- aroma_other
)   (
    1,    -- scope
'Table',    -- style
'Red',    -- label_color
'France',    -- country
'Burgundy',    -- region
'Beaujolais Nouveau',    -- appellation
'Gamay',    -- grapes
2023,    -- vintage
'None',    -- producer
'None',    -- bottling
'Clear',    -- clarity
179,    -- appearance_red
0,    -- appearance_green
59,    -- appearance_blue
'None',    -- appearance_other
'Sound',    -- condition
180,    -- nose_intensity
0,    -- development
10,    -- petillance
4,    -- sweetness
170,    -- acidity
128,    -- alcohol
115,    -- body
40,    -- tannin_or_bitterness
80,    -- finish
150,    -- fruit_color
75,    -- fruit_family
90,    -- fruit_condition
0,    -- fruit_subcondition
70,    -- floral
50,    -- herbaceous
20,    -- herbal
0,    -- earth_organic
50,    -- earth_inorganic
40,    -- grape_spice
100,    -- oak_aroma
0,    -- oak_intensity
'Bubble Gum,Banana Popsicle'    -- aroma_other
)   (
    1,    -- scope
'Table',    -- style
'Red',    -- label_color
'France',    -- country
'Burgundy',    -- region
'Beaujolais Cru',    -- appellation
'Gamay',    -- grapes
2021,    -- vintage
'None',    -- producer
'None',    -- bottling
'Clear',    -- clarity
128,    -- appearance_red
0,    -- appearance_green
21,    -- appearance_blue
'None',    -- appearance_other
'Sound',    -- condition
140,    -- nose_intensity
70,    -- development
0,    -- petillance
2,    -- sweetness
170,    -- acidity
134,    -- alcohol
145,    -- body
90,    -- tannin_or_bitterness
160,    -- finish
70,    -- fruit_color
155,    -- fruit_family
120,    -- fruit_condition
90,    -- fruit_subcondition
110,    -- floral
50,    -- herbaceous
100,    -- herbal
140,    -- earth_organic
100,    -- earth_inorganic
120,    -- grape_spice
100,    -- oak_aroma
65,    -- oak_intensity
'None'    -- aroma_other
)   (
    1,    -- scope
'Table',    -- style
'Red',    -- label_color
'France',    -- country
'Burgundy',    -- region
'Bourgogne',    -- appellation
'Pinot Noir',    -- grapes
2022,    -- vintage
'None',    -- producer
'None',    -- bottling
'Clear',    -- clarity
128,    -- appearance_red
0,    -- appearance_green
21,    -- appearance_blue
'None',    -- appearance_other
'Sound',    -- condition
100,    -- nose_intensity
60,    -- development
5,    -- petillance
3,    -- sweetness
160,    -- acidity
136,    -- alcohol
140,    -- body
65,    -- tannin_or_bitterness
130,    -- finish
100,    -- fruit_color
85,    -- fruit_family
140,    -- fruit_condition
90,    -- fruit_subcondition
60,    -- floral
60,    -- herbaceous
80,    -- herbal
80,    -- earth_organic
80,    -- earth_inorganic
50,    -- grape_spice
100,    -- oak_aroma
50,    -- oak_intensity
'None'    -- aroma_other
)   (
    1,    -- scope
'Table',    -- style
'Red',    -- label_color
'France',    -- country
'Burgundy',    -- region
'Bourgogne Grand Cru',    -- appellation
'Pinot Noir',    -- grapes
2020,    -- vintage
'None',    -- producer
'None',    -- bottling
'Clear',    -- clarity
102,    -- appearance_red
0,    -- appearance_green
34,    -- appearance_blue
'None',    -- appearance_other
'Sound',    -- condition
200,    -- nose_intensity
100,    -- development
0,    -- petillance
2,    -- sweetness
155,    -- acidity
143,    -- alcohol
165,    -- body
140,    -- tannin_or_bitterness
195,    -- finish
125,    -- fruit_color
160,    -- fruit_family
145,    -- fruit_condition
110,    -- fruit_subcondition
110,    -- floral
40,    -- herbaceous
20,    -- herbal
140,    -- earth_organic
70,    -- earth_inorganic
70,    -- grape_spice
70,    -- oak_aroma
200,    -- oak_intensity
'None'    -- aroma_other
)   (
    1,    -- scope
'Table',    -- style
'Red',    -- label_color
'France',    -- country
'Loire',    -- region
'Chinon',    -- appellation
'Cabernet Franc',    -- grapes
2020,    -- vintage
'None',    -- producer
'None',    -- bottling
'Clear',    -- clarity
77,    -- appearance_red
0,    -- appearance_green
25,    -- appearance_blue
'None',    -- appearance_other
'Sound',    -- condition
175,    -- nose_intensity
75,    -- development
0,    -- petillance
2,    -- sweetness
170,    -- acidity
139,    -- alcohol
150,    -- body
145,    -- tannin_or_bitterness
160,    -- finish
140,    -- fruit_color
50,    -- fruit_family
130,    -- fruit_condition
90,    -- fruit_subcondition
120,    -- floral
220,    -- herbaceous
105,    -- herbal
145,    -- earth_organic
130,    -- earth_inorganic
90,    -- grape_spice
100,    -- oak_aroma
50,    -- oak_intensity
'Graphite'    -- aroma_other
)   (
    1,    -- scope
'Table',    -- style
'Red',    -- label_color
'France',    -- country
'Rhone',    -- region
'Cornas',    -- appellation
'Syrah',    -- grapes
2021,    -- vintage
'None',    -- producer
'None',    -- bottling
'Opaque',    -- clarity
60,    -- appearance_red
0,    -- appearance_green
11,    -- appearance_blue
'None',    -- appearance_other
'Sound',    -- condition
165,    -- nose_intensity
30,    -- development
0,    -- petillance
2,    -- sweetness
160,    -- acidity
141,    -- alcohol
160,    -- body
160,    -- tannin_or_bitterness
160,    -- finish
190,    -- fruit_color
130,    -- fruit_family
125,    -- fruit_condition
90,    -- fruit_subcondition
115,    -- floral
50,    -- herbaceous
100,    -- herbal
150,    -- earth_organic
100,    -- earth_inorganic
240,    -- grape_spice
100,    -- oak_aroma
80,    -- oak_intensity
'Smoked Meat,Black Olive'    -- aroma_other
)   (
    1,    -- scope
'Table',    -- style
'Red',    -- label_color
'France',    -- country
'Rhone',    -- region
'Cotes Du Rhone',    -- appellation
'Grenache,Mourvedre,Syrah',    -- grapes
2021,    -- vintage
'None',    -- producer
'None',    -- bottling
'Opaque',    -- clarity
102,    -- appearance_red
0,    -- appearance_green
17,    -- appearance_blue
'None',    -- appearance_other
'Sound',    -- condition
140,    -- nose_intensity
70,    -- development
0,    -- petillance
3,    -- sweetness
145,    -- acidity
147,    -- alcohol
200,    -- body
80,    -- tannin_or_bitterness
155,    -- finish
105,    -- fruit_color
165,    -- fruit_family
145,    -- fruit_condition
125,    -- fruit_subcondition
50,    -- floral
30,    -- herbaceous
140,    -- herbal
80,    -- earth_organic
70,    -- earth_inorganic
125,    -- grape_spice
100,    -- oak_aroma
40,    -- oak_intensity
'None'    -- aroma_other
)   (
    1,    -- scope
'Table',    -- style
'Red',    -- label_color
'Italy',    -- country
'Piedmont',    -- region
'Barbaresco',    -- appellation
'Nebbiolo',    -- grapes
2019,    -- vintage
'None',    -- producer
'None',    -- bottling
'Clear',    -- clarity
128,    -- appearance_red
0,    -- appearance_green
0,    -- appearance_blue
'None',    -- appearance_other
'Sound',    -- condition
190,    -- nose_intensity
110,    -- development
0,    -- petillance
2,    -- sweetness
185,    -- acidity
145,    -- alcohol
165,    -- body
230,    -- tannin_or_bitterness
185,    -- finish
75,    -- fruit_color
75,    -- fruit_family
120,    -- fruit_condition
90,    -- fruit_subcondition
145,    -- floral
30,    -- herbaceous
130,    -- herbal
190,    -- earth_organic
65,    -- earth_inorganic
110,    -- grape_spice
85,    -- oak_aroma
100,    -- oak_intensity
'Tar'    -- aroma_other
)   (
    1,    -- scope
'Table',    -- style
'Red',    -- label_color
'Italy',    -- country
'Veneto',    -- region
'Valpolicella Ripasso',    -- appellation
'Corvina,Corvinone',    -- grapes
2021,    -- vintage
'None',    -- producer
'None',    -- bottling
'Opaque',    -- clarity
102,    -- appearance_red
0,    -- appearance_green
0,    -- appearance_blue
'None',    -- appearance_other
'Sound',    -- condition
185,    -- nose_intensity
120,    -- development
0,    -- petillance
6,    -- sweetness
185,    -- acidity
142,    -- alcohol
200,    -- body
60,    -- tannin_or_bitterness
190,    -- finish
110,    -- fruit_color
180,    -- fruit_family
180,    -- fruit_condition
155,    -- fruit_subcondition
120,    -- floral
90,    -- herbaceous
40,    -- herbal
190,    -- earth_organic
40,    -- earth_inorganic
80,    -- grape_spice
120,    -- oak_aroma
110,    -- oak_intensity
'None'    -- aroma_other
);