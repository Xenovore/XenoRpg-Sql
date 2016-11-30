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

-- TEST DATA; REMOVE
INSERT INTO Items
(
    Name,
    Description,
    Type,
    SizeW,
    SizeH
)
VALUES
(
    "Fiery Bleeding Box",
    "Dangerously sharp and exothermic",
    0x01, -- endo container
    2,
    2
);

INSERT INTO Items
(
    Name,
    Description,
    Type,
    SizeW,
    SizeH
)
VALUES
(
    "Small Pouch",
    "Large enough to hold a few coins or gems",
    0x01, -- container
    1,
    1
);

INSERT INTO Items
(
    Name,
    Description,
    Type,
    SizeW,
    SizeH
)
VALUES
(
    "Plastic Sack",
    "Flimsy; the sort you would get at the grocery store.",
    0x01, -- container
    2,
    2
);

INSERT INTO Items
(
    Name,
    Description,
    Type,
    SizeW,
    SizeH,
    Quantity
)
VALUES
(
    "Gold Coin",
    "Gold coin; worth 10 silver coins.",
    0x0000000100000000, -- coin
    1,
    1,
    7
);

INSERT INTO Items
(
    Name,
    Description,
    Type,
    SizeW,
    SizeH
)
VALUES
(
    "Rusty Sword",
    "This sword sucks.",
    0x01000000, -- weapon, bladed
    1,
    4
);

INSERT INTO Items
(
    Name,
    Description,
    Type,
    SizeW,
    SizeH
)
VALUES
(
    "Nightshade",
    "Spell component",
    0x0000000400000000, -- herb
    1,
    1
);

INSERT INTO Items
(
    Name,
    Description,
    Type,
    SizeW,
    SizeH
)
VALUES
(
    "Sulfurous Ass",
    "Spell component",
    0x0000000400000000, -- herb
    1,
    1
);

INSERT INTO Items
(
    Name,
    Description,
    Type,
    SizeW,
    SizeH
)
VALUES
(
    "Spider Silk",
    "Spell component",
    0x0000000400000000, -- herb
    1,
    1
);

INSERT INTO Items
(
    Name,
    Description,
    Type,
    SizeW,
    SizeH
)
VALUES
(
    "Scroll",
    "Scroll of scrollness",
    0xFFFFFFFFFFFFFFFF, -- any
    1,
    2
);

INSERT INTO Items
(
    Name,
    Description,
    Type,
    SizeW,
    SizeH,
    Quantity
)
VALUES
(
    "Small Health Potion",
    "Heals up to 30 hp.",
    0x09, -- liquid container
    1,
    2,
    3
);

INSERT INTO Items
(
    Name,
    Description,
    Type,
    SizeW,
    SizeH,
    Quantity
)
VALUES
(
    "Medium Health Potion",
    "Heals up to 100 hp.",
    0x09, -- liquid container
    2,
    2,
    5
);

INSERT INTO Items
(
    Name,
    Description,
    Type,
    SizeW,
    SizeH,
    Quantity
)
VALUES
(
    "Empty Bottle",
    "Bone dry",
    0x09, -- liquid container
    2,
    2,
    1
);


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

-- TEST DATA; REMOVE
INSERT INTO ItemContainers ( ItemId ) VALUES ( 1 ); -- Fiery box
INSERT INTO ItemContainers ( ItemId ) VALUES ( 2 ); -- small pouch
INSERT INTO ItemContainers ( ItemId ) VALUES ( 3 ); -- plastic sack


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
    Items.*
FROM Items


