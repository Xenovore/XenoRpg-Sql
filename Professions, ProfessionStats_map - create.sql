------------------------------------------------------------------
-- CREATE PROFESSIONS TABLE
------------------------------------------------------------------

DROP TABLE IF EXISTS Professions;

CREATE TABLE IF NOT EXISTS Professions
(
    Id          INTEGER        PRIMARY KEY AUTOINCREMENT,
    Name        VARCHAR(32)    DEFAULT "",   -- e.g. "Hunter"
    Description VARCHAR(1000)  DEFAULT ""
);

INSERT INTO Professions VALUES ( 0, "None", "" );
INSERT INTO Professions (Name) VALUES ("Warrior");
INSERT INTO Professions (Name) VALUES ("Rogue");
INSERT INTO Professions (Name) VALUES ("Hunter");
INSERT INTO Professions (Name) VALUES ("Druid");
INSERT INTO Professions (Name) VALUES ("Mage");
INSERT INTO Professions (Name) VALUES ("Priest");

select * from Professions;

-------------------------------------------------------------------
-- CREATE PROFESSION STATS (PACKS)
-- • Maps skills (or attributes) to each profession
-------------------------------------------------------------------
DROP TABLE IF EXISTS ProfessionStats_map;

CREATE TABLE IF NOT EXISTS ProfessionStats_map
(
    ProfId INTEGER,
    StatId INTEGER
);

