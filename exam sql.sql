CREATE TABLE televisions (

    id INTEGER PRIMARY KEY AUTOINCREMENT,

    catalog_number TEXT UNIQUE,

    brand TEXT CHECK (brand IN ('Samsung', 'LG', 'Sony')),

    model TEXT,

    screen_size REAL,

    resolution TEXT CHECK (resolution IN ('4K', '8K', 'Full HD')),

    price REAL CHECK (price >= 0),

    stock_quantity INTEGER DEFAULT 0 CHECK (stock_quantity >= 0),

    release_year INTEGER,

    smart_tv INTEGER CHECK (smart_tv IN (0, 1)),

    os TEXT,

    panel_type TEXT CHECK (panel_type IN ('OLED', 'QLED', 'LED')),

    CHECK (

        (smart_tv = 1 AND os IS NOT NULL) OR

        (smart_tv = 0 AND os IS NULL)
    INSERT INTO televisions

(catalog_number, brand, model, screen_size, resolution, price,

 stock_quantity, release_year, smart_tv, os, panel_type)

VALUES

('TV1001', 'Samsung', 'QLED Q80', 55, '4K', 3500, 5, 2024, 1, 'Tizen', 'QLED');

INSERT INTO televisions

(catalog_number, brand, model, screen_size, resolution, price,

 stock_quantity, release_year, smart_tv, os, panel_type)

VALUES

('TV1002', 'LG', 'OLED C3', 65, '4K', 5200, 3, 2023, 1, 'webOS', 'OLED');

INSERT INTO televisions

(catalog_number, brand, model, screen_size, resolution, price,

 stock_quantity, release_year, smart_tv, os, panel_type)

VALUES

('TV1003', 'Sony', 'Bravia', 50, 'Full HD', 2200, 4, 2022, 0, NULL, 'LED');



