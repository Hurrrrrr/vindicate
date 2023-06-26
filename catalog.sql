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
    fruit_condition INTEGER,
    fruit_subcondition INTEGER,
    floral INTEGER,
    herbaceous INTEGER,
    herbal INTEGER,
    earth_organic INTEGER,
    earth_inorganic INTEGER,
    grape_spice INTEGER,
    oak INTEGER,
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
    fruit_condition,
    fruit_subcondition,
    floral,
    herbaceous,
    herbal,
    earth_organic,
    earth_inorganic,
    grape_spice,
    oak,
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
    'Test Producer',                -- producer
    'Test Bottling',                -- bottling
    'Clear',                        -- clarity
    255,                            -- appearance_red
    213,                            -- appearance_green
    0,                              -- appearance_blue
    'Sediment',                     -- appearance_other
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
    180,                            -- fruit_condition
    210,                            -- fruit_subcondition
    80,                             -- floral
    20,                             -- herbaceous
    180,                            -- herbal
    100,                            -- earth_organic
    80,                             -- earth_inorganic
    120,                            -- grape_spice
    155,                            -- oak
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
    'Test Producer 2',
    'Test Bottling 2',
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
    100,
    105,
    20,
    30,
    0,
    30,
    80,
    30,
    50,
    50,
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
    110,
    100,
    70,
    80,
    70,
    155,
    130,
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
    90,
    110,
    90,
    130,
    160,
    100,
    120,
    110,
    'Graphite,Pencil Shavings'
),  (
    3,                              -- scope
    'Table',                        -- style
    'White',                        -- color
    'Greece',                          -- country
    'Test Region',                   -- region
    'Test App',                  -- appellation
    'Test Grape',        -- grapes
    2019,                           -- vintage
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
    100,                            -- fruit_condition
    100,                            -- fruit_subcondition
    100,                             -- floral
    100,                             -- herbaceous
    100,                            -- herbal
    100,                            -- earth_organic
    100,                            -- earth_inorganic
    100,                            -- grape_spice
    100,                            -- oak
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
60,
80,
60,
30,
100,
190,
40,
30,
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
60,
110,
20,
70,
100,
180,
90,
120,
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
70,
120,
20,
50,
110,
210,
120,
20,
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
155,
205,
0,
0,
70,
100,
155,
30,
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
60,
50,
50,
0,
30,
60,
0,
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
85,
80,
220,
40,
40,
100,
90,
0,
'Gooseberry,Passion Fruit'
);