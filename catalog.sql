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
    'Chardonnay',        -- grapes
    2018,                           -- vintage
    'Test Producer',                -- producer
    'Test Bottling',                -- bottling
    'Clear',                        -- clarity
    255,                            -- appearance_red
    213,                            -- appearance_green
    0,                              -- appearance_blue
    'Sediment',                     -- appearance_other
    'Sound',                        -- condition
    175,                            -- nose_intensity
    75,                             -- development
    0,                              -- petillance
    5,                              -- sweetness
    110,                            -- acidity
    143,                            -- alcohol
    210,                            -- body
    10,                             -- tannin_or_bitterness
    195,                            -- finish
    75,                             -- fruit_color
    190,                            -- fruit_family
    150,                            -- fruit_condition
    180,                            -- fruit_subcondition
    80,                             -- floral
    90,                             -- herbaceous
    130,                            -- herbal
    100,                            -- earth_organic
    100,                            -- earth_inorganic
    150,                            -- grape_spice
    125,                            -- oak
    'Smoke'                         -- aroma_other
), (
    1,
    'Table',
    'Red',
    'France',
    'Burgundy',
    'Musigny',
    'Pinot Noir',
    2017,
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
    2,                              -- scope
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
);