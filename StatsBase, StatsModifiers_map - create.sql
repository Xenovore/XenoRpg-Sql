-----------------------------------------------------------------
-- CREATE STAT TYPES
-----------------------------------------------------------------
/*
DROP TABLE IF EXISTS StatTypes;

CREATE TABLE IF NOT EXISTS StatTypes
(
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    Name VARCHAR( 16 )
);

INSERT INTO StatTypes (Name) VALUES ("AttribPhysical"); -- 1
INSERT INTO StatTypes (Name) VALUES ("AttribMental");   -- 2
INSERT INTO StatTypes (Name) VALUES ("AttribSpecial");  -- 3
INSERT INTO StatTypes (Name) VALUES ("Resistance");     -- 4
INSERT INTO StatTypes (Name) VALUES ("Skill");          -- 5
INSERT INTO StatTypes (Name) VALUES ("Special");        -- 6

SELECT * FROM StatTypes;
*/


---------------------------------------------------------------
-- CREATE STATSBASE
-- • StatsBase hold global data that applies to all stats
---------------------------------------------------------------
DROP TABLE IF EXISTS StatsBase;

CREATE TABLE StatsBase (
    Id           INTEGER       PRIMARY KEY AUTOINCREMENT,
    Name         VARCHAR (16)  UNIQUE,
    Abbr         VARCHAR (6)   UNIQUE,
    TypeId       INTEGER       DEFAULT 1
                               REFERENCES StatTypes (Id),
    LevelMin     REAL          DEFAULT 10,
    LevelBaseLo  REAL          DEFAULT 50,
    LevelBaseHi  REAL          DEFAULT 50,
    LevelMax     REAL          DEFAULT 100,
    ScorePerLvl  REAL          DEFAULT 1,
    XPCost       REAL          DEFAULT 1000,
    ApplyType    INTEGER       DEFAULT 1,
    ApplyHow     INTEGER       DEFAULT 1,
    ApplyPercent REAL          DEFAULT 1,
    Description  VARCHAR (256) DEFAULT "" 
);

-- Apply example: If Str and Dex both apply to Sword, maybe Str.% = 0.20, Dex.% = 0.80.
-- Another: Dex and Ref both apply to Initiative; Dex.% = 0.25, Ref.% = 0.75

---------------------------------------------------------------
-- CREATE STATS MODIFIERS
-- • What does the stat modify?
---------------------------------------------------------------
DROP TABLE IF EXISTS StatModifiers_map;

CREATE TABLE IF NOT EXISTS StatModifiers_map
(
    StatId         INTEGER,
    TargetStatId   INTEGER
);


INSERT INTO StatModifiers_map
( 
    StatId,
    TargetStatId
)
VALUES
(
    2,
    14
);
    
INSERT INTO StatModifiers_map
( 
    StatId,
    TargetStatId
)
VALUES
(
    2,
    15
);
    
INSERT INTO StatModifiers_map
( 
    StatId,
    TargetStatId
)
VALUES
(
    2,
    16
);
    
INSERT INTO StatModifiers_map
( 
    StatId,
    TargetStatId
)
VALUES
(
    17,
    1
);
    
INSERT INTO StatModifiers_map
( 
    StatId,
    TargetStatId
)
VALUES
(
    3,
    18
);

INSERT INTO StatModifiers_map
( 
    StatId,
    TargetStatId
)
VALUES
(
    3,
    19
);
    

INSERT INTO StatModifiers_map
( 
    StatId,
    TargetStatId
)
VALUES
(
    1,
    18
);

INSERT INTO StatModifiers_map
( 
    StatId,
    TargetStatId
)
VALUES
(
    1,
    19
);
    

--===============================================================
-- NOTE: Use LEFT OUTER JOIN when fetching attributes
-- This gets skills & resistances and their associated attributes
SELECT
StatsBase.Id,
StatsBase.Name,
StatsBase.Type,
StatTypes.Name,
NULL,
StatsBase2.Id AS ModAttribId,
StatsBase2.Abbr AS ModAbbr
--StatModifiers_map.*
FROM StatsBase
JOIN StatTypes ON StatTypes.Id = StatsBase.Type
JOIN StatsBase AS StatsBase2 ON StatsBase2.Id = StatModifiers_map.StatId
LEFT OUTER JOIN StatModifiers_map ON StatModifiers_map.TargetStatId = StatsBase.Id
WHERE StatsBase.Type IN (4, 5 ); -- skill/resist


SELECT * FROM StatsBase;
