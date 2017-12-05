------------------------------------------------------------------
-- CREATE SPECIES TABLE
-- • Holds data for all species, from humans to elementals to dogs
------------------------------------------------------------------

DROP TABLE IF EXISTS Species;

CREATE TABLE IF NOT EXISTS Species
(
    Id          INTEGER        PRIMARY KEY AUTOINCREMENT,
    Name        VARCHAR(32)    DEFAULT "",   -- Main, e.g. "Elf"
    NameSub     VARCHAR(32)    DEFAULT "",   -- Sub, e.g. "Night", "High", "Noldor", etc.
    Description VARCHAR(1000)  DEFAULT "",
    -- origin/homeland
    IsPlayable   BOOLEAN        DEFAULT 0     -- Most species would be AI only
    
    -- Alliances
);

INSERT INTO Species
(Id, Name, NameSub, IsPlayable)
VALUES( 0, "None", "Invalid", 0 );

INSERT INTO Species
(Name, NameSub, IsPlayable)
VALUES("Human", "White", 1);

INSERT INTO Species
(Name, NameSub, IsPlayable)
VALUES("Human", "Asian", 1);

INSERT INTO Species
(Name, NameSub, IsPlayable)
VALUES("Elf", "High", 1);

INSERT INTO Species
(Name, NameSub, IsPlayable)
VALUES("Elf", "Wood", 1);

INSERT INTO Species
(Name, NameSub, IsPlayable)
VALUES("Orc", "", 1);

INSERT INTO Species
(Name, NameSub, IsPlayable)
VALUES("Troll", "", 1);

select * from species;
