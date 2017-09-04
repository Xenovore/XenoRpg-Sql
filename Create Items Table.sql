---------------------------------------------------------------
-- CREATE ITEMS TABLE
---------------------------------------------------------------
DROP TABLE IF EXISTS Items;

CREATE TABLE IF NOT EXISTS Items
(
    Id          INTEGER PRIMARY KEY,
    Name        VARCHAR (32),
    Description VARCHAR (255),
    Type        INTEGER DEFAULT 0,
    Weight      REAL DEFAULT 0.1, -- kg
    IsEnabled   BOOLEAN DEFAULT 1,
    Quantity    INTEGER DEFAULT 1, -- Qty in stack
    QuantityCap INTEGER DEFAULT 1,
    Location    INTEGER DEFAULT 0, -- 0 = character
    IconIndex   INTEGER DEFAULT 0, 
    SizeW       INTEGER DEFAULT 1,
    SizeH       INTEGER DEFAULT 1,
    LocationX   REAL DEFAULT 0.0,
    LocationY   REAL DEFAULT 0.0,
    LocationZ   REAL DEFAULT 0.0  -- depth in 2D UI
);

---------------------------------------------------------------
-- CREATE ITEM EFFECTS MAP TABLE
-- • What effects are attached to each item
---------------------------------------------------------------
DROP TABLE IF EXISTS ItemEffects_map;

CREATE TABLE ItemEffects_map
(
    ItemId INTEGER, -- TODO: Set foreign key?
    EffectId INTEGER -- TODO: Set foreign key?
);

INSERT INTO ItemEffects_map
(
    ItemId,
    EffectId
)
VALUES
(
    1, 
    1
);

---------------------------------------------------------------

SELECT
    Items.*
FROM Items


