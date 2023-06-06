CREATE TABLE wines (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    scope INTEGER,
    style TEXT,
    label_color TEXT,
    country TEXT,
    region TEXT,
    appellation TEXT,
    vintage INTEGER,
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

CREATE TABLE grapes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT
);

CREATE TABLE wine_grapes (
    wine_id INTEGER,
    grape_id INTEGER,
    FOREIGN KEY(wine_id) REFERENCES wines(id),
    FOREIGN KEY(grape_id) REFERENCES grapes(id),
    PRIMARY KEY(wine_id, grape_id)
);

INSERT INTO wines (
    scope,
    style,
    label_color,
    country,
    region,
    appellation,
    vintage,
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
    0,
    'Table',
    'White',
    'USA',
    'California',
    'Napa Valley',
    2018,
    'Clear',
    255,
    213,
    0,
    'Sediment',
    'Sound',
    175,
    75,
    0,
    5,
    110,
    143,
    210,
    20,
    195,
    75,
    190,
    150,
    0,
    30,
    0,
    0,
    30,
    30,
    0,
    125,
    'Smoke'
), (
    0,
    'Table',
    'Red',
    'France',
    'Burgundy',
    'Musigny',
    2017,
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
);