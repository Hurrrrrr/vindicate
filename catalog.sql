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
);