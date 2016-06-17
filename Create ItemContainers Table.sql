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

SELECT
*
FROM Items
JOIN ItemContainers ON ItemContainers.ItemId = Items.Id AND ItemTypes.Container = 1
JOIN ItemTypes ON ItemTypes.ItemId = Items.Id;
 
