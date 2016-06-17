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

INSERT INTO Items
(
    Id,
    Name,
    Description,
    Type,
    SizeW,
    SizeH
)
VALUES
(
    1,
    "Fiery Bleeding Box",
    "Dangerously sharp and exothermic",
    0x01, -- container
    2,
    2
);

--UPDATE Items
--SET Name="Fiery Bleeding Box", Description="Sharp, spiky box. You WILL get cut if you touch it!"
--WHERE Items.Id = 1;

---------------------------------------------------------------
-- CREATE CONTAINERS
---------------------------------------------------------------
DROP TABLE IF EXISTS ItemContainers;

CREATE TABLE IF NOT EXISTS ItemContainers
(
    Id          INTEGER PRIMARY KEY AUTOINCREMENT,
    ItemId      INTEGER,
    ItemTotal   INTEGER DEFAULT 0,
    ItemCap     INTEGER DEFAULT 0,    -- 0 = no cap
    VolumeTotal INTEGER DEFAULT 0,
    VolumeCap   INTEGER DEFAULT 0,  -- 0 = no cap
    WeightTotal REAL    DEFAULT 0.0,
    WeightCap   REAL    DEFAULT 0.0   -- 0 = no cap
    -- Type allowed in another table
);

INSERT INTO ItemContainers
(
    Id,
    ItemId
)
VALUES
(
    1,
    1
);

---------------------------------------------------------------
-- ITEM EFFECTS
-- • What effects are attached to item
---------------------------------------------------------------
DROP TABLE IF EXISTS ItemEffects;

CREATE TABLE ItemEffects
(
    ItemId INTEGER,
    EffectId INTEGER
);

INSERT INTO ItemEffects
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
    Items.*,
    ItemTypes.*
FROM Items
JOIN ItemTypes ON ItemTypes.Value = Items.Type


