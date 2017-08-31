---------------------------------------------------------------
-- CREATE CONTAINERS
---------------------------------------------------------------
DROP TABLE IF EXISTS ItemContainers_ext;

CREATE TABLE IF NOT EXISTS ItemContainers_ext
(
    ItemId      INTEGER PRIMARY KEY REFERENCES Items (Id), -- Should always match an item in Items table
    ItemTotal   INTEGER DEFAULT 0,
    ItemCap     INTEGER DEFAULT 0,   -- 0 = no cap
    VolumeTotal INTEGER DEFAULT 0,
    VolumeCap   INTEGER DEFAULT 0,   -- 0 = no cap
    WeightTotal REAL    DEFAULT 0.0,
    WeightCap   REAL    DEFAULT 0.0, -- 0 = no cap
    TypeAllowed INTEGER DEFAULT -1,  -- 0xFFFFFFFFFFFFFFFF = any and all
    Locked      INTEGER DEFAULT 0    -- 0 = unlocked, 1+ = lock difficulty
);
 
COMMIT;
