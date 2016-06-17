---------------------------------------------------------------
-- CREATE CHARACTER TABLES
-- • Holds all NPC and PC data
---------------------------------------------------------------
DROP TABLE IF EXISTS Characters;

CREATE TABLE IF NOT EXISTS Characters
(
    Id        INTEGER PRIMARY KEY AUTOINCREMENT,
    [Type]    INTEGER DEFAULT 1, -- 1 = PC, 2 = NPC
    Name      VARCHAR (16),
    NameLast  VARCHAR (16) DEFAULT "",
    NameTitle VARCHAR (16) DEFAULT "",
    Age       FLOAT        DEFAULT 0.0, -- Age past "creation" in years; allow decimal value to be converted into days, weeks, months, etc.
    Alignment INTEGER      DEFAULT 0,   -- negative = evil, positive = good (use stat?)
    Level     INTEGER      DEFAULT 1,   -- If calculated, don't need to save
    XPPool    INTEGER      DEFAULT 0    -- General XP pool
);

-- DEFAULT CHARACTER
INSERT INTO Characters ( Name ) VALUES ( "Default" );

SELECT * FROM Characters;
