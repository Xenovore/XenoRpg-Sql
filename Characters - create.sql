---------------------------------------------------------------
-- CREATE CHARACTER TABLES
-- • Holds all NPC and PC data
---------------------------------------------------------------
DROP TABLE IF EXISTS Characters;

CREATE TABLE IF NOT EXISTS Characters
(
    Id          INTEGER      PRIMARY KEY AUTOINCREMENT,
    [Type]      INTEGER      DEFAULT 1, -- 1 = PC, 2 = NPC
    Name        VARCHAR (16),
    NameLast    VARCHAR (16) DEFAULT "",
    NameTitle   VARCHAR (16) DEFAULT "",
    Age         FLOAT        DEFAULT 0.0, -- Age past "creation" in years; allow decimal value to be converted into days, weeks, months, etc.
    Gender      INTEGER      DEFAULT 0,   -- 0 = none, 1 = male, 2 = female
    Species     INTEGER      DEFAULT 1,   -- race, etc. ID into Species table
    Profession  INTEGER      DEFAULT 1,   -- or Class; ID into Profession table
    Alignment   INTEGER      DEFAULT 0,   -- negative = evil, positive = good (use stat?)
    Level       INTEGER      DEFAULT 1,   -- Calculated from all attribute and skill levels; save for quick access
    XPPool      INTEGER      DEFAULT 0,   -- General XP pool
    ContBodyId  INTEGER      DEFAULT 0    -- ID of character's inventory container "Body"
);

-- DEFAULT CHARACTER
-- Per-race default?
-- Link to body container template for now
INSERT INTO Characters ( Name, Age, Gender, ContBodyId ) VALUES ( "Default", 16, 1, 1 ); -- 

-- TEST GIRL
INSERT INTO Characters 
(
    Type,
    Name,
    NameLast,
    NameTitle,
    Age,
    Gender,
    Species,
    Profession,
    Alignment,
    Level,
    XPPool,
    ContBodyId
)
VALUES ( 2, "Talliendraa", "Silvermoon", "Wanderer", 16, 2, 3, 3, 15, 5, 2563, 1 ); -- 

SELECT * FROM Characters;

--------------------------------------------------------
DROP TABLE IF EXISTS Gender;

CREATE TABLE Gender (
    Id   INTEGER     PRIMARY KEY,
    Name VARCHAR (8) NOT NULL
);

INSERT INTO Gender ( Id, Name ) VALUES ( 0, "None" );
INSERT INTO Gender ( Id, Name ) VALUES ( 1, "Male" );
INSERT INTO Gender ( Id, Name ) VALUES ( 2, "Female" );

SELECT * FROM Gender;
