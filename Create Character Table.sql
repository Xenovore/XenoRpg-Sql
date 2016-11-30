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
    Profession  INTEGER      DEFAULT 0,   -- or Class; ID into Profession table
    Alignment   INTEGER      DEFAULT 0,   -- negative = evil, positive = good (use stat?)
    Level       INTEGER      DEFAULT 1,   -- Calculated from all attribute and skill levels; save for quick access
    XPPool      INTEGER      DEFAULT 0,   -- General XP pool
    ContBodyId  INTEGER      DEFAULT 0    -- ID of character's inventory container "Body"
);

-- DEFAULT CHARACTER
INSERT INTO Characters ( Name, Age, ContBodyId ) VALUES ( "Default", 16, 1 ); -- Link to body container template for now

SELECT * FROM Characters;
