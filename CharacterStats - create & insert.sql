---------------------------------------------------------------
-- CREATE CHARACTER STATS
---------------------------------------------------------------
DROP TABLE IF EXISTS CharacterStats;

CREATE TABLE IF NOT EXISTS CharacterStats
(
    CharacterId INTEGER,
    StatId      INTEGER, -- REFERENCES StatsBase(Id),
    Level       INTEGER DEFAULT 0,  -- 0 = no ability/knowledge
    LevelTotal  INTEGER DEFAULT 0,  -- Level with all modifiers; can be calculated, save in DB?
    XpToNextLvl REAL    DEFAULT 0.0 -- XP Gained
);

-- INSERT STATS FOR DEFAULT
INSERT INTO CharacterStats VALUES ( 1,  1, 50, 50, 0 );
INSERT INTO CharacterStats VALUES ( 1,  2, 50, 50, 0 );
INSERT INTO CharacterStats VALUES ( 1,  3, 50, 50, 0 );
INSERT INTO CharacterStats VALUES ( 1,  4, 50, 50, 0 );
INSERT INTO CharacterStats VALUES ( 1,  5, 50, 50, 0 );
INSERT INTO CharacterStats VALUES ( 1,  6, 50, 50, 0 );
INSERT INTO CharacterStats VALUES ( 1,  7, 50, 50, 0 );
INSERT INTO CharacterStats VALUES ( 1,  8, 50, 50, 0 );
INSERT INTO CharacterStats VALUES ( 1,  9, 50, 50, 0 );
INSERT INTO CharacterStats VALUES ( 1, 10, 50, 50, 0 );
INSERT INTO CharacterStats VALUES ( 1, 11,  1,  1, 0 );
INSERT INTO CharacterStats VALUES ( 1, 12,  1,  1, 0 );
INSERT INTO CharacterStats VALUES ( 1, 13,  1,  1, 0 );
INSERT INTO CharacterStats VALUES ( 1, 14,  1,  1, 0 );
INSERT INTO CharacterStats VALUES ( 1, 15,  1,  1, 0 );
INSERT INTO CharacterStats VALUES ( 1, 16,  1,  1, 0 );
INSERT INTO CharacterStats VALUES ( 1, 17,  1,  1, 0 );
INSERT INTO CharacterStats VALUES ( 1, 18,  1,  1, 0 );
INSERT INTO CharacterStats VALUES ( 1, 19,  1,  1, 0 );

-- INSERT STATS FOR TEST (TALLIENDRA)
INSERT INTO CharacterStats VALUES ( 2,  1, 50, 50, 0 );
INSERT INTO CharacterStats VALUES ( 2,  2, 50, 50, 0 );
INSERT INTO CharacterStats VALUES ( 2,  3, 50, 50, 0 );
INSERT INTO CharacterStats VALUES ( 2,  4, 50, 50, 0 );
INSERT INTO CharacterStats VALUES ( 2,  5, 50, 50, 0 );
INSERT INTO CharacterStats VALUES ( 2,  6, 50, 50, 0 );
INSERT INTO CharacterStats VALUES ( 2,  7, 50, 50, 0 );
INSERT INTO CharacterStats VALUES ( 2,  8, 50, 50, 0 );
INSERT INTO CharacterStats VALUES ( 2,  9, 50, 50, 0 );
INSERT INTO CharacterStats VALUES ( 2, 10, 50, 50, 0 );
INSERT INTO CharacterStats VALUES ( 2, 11,  1,  1, 0 );
INSERT INTO CharacterStats VALUES ( 2, 12,  1,  1, 0 );
INSERT INTO CharacterStats VALUES ( 2, 13,  1,  1, 0 );
INSERT INTO CharacterStats VALUES ( 2, 14,  1,  1, 0 );
INSERT INTO CharacterStats VALUES ( 2, 15,  1,  1, 0 );
INSERT INTO CharacterStats VALUES ( 2, 16,  1,  1, 0 );
INSERT INTO CharacterStats VALUES ( 2, 17,  1,  1, 0 );
INSERT INTO CharacterStats VALUES ( 2, 18,  1,  1, 0 );
INSERT INTO CharacterStats VALUES ( 2, 19,  1,  1, 0 );


------------------------------------------------------------------

SELECT * FROM Characters;

SELECT
    Characters.Name,
    Characters.NameLast,
    Characters.XPPool,
    StatsBase.Name AS Stat,
    StatsBase.Abbr,
    StatsBase.LevelMin,
    StatsBase.LevelBaseLo,
    StatsBase.LevelBaseHi,
    StatsBase.LevelMax,
    StatsBase.ScorePerLvl,
    StatsBase.XPCost,
    CharacterStats.Level AS CurrentLvl,
    CharacterStats.XPToNextLvl
FROM CharacterStats
JOIN Characters ON Characters.Id = CharacterStats.CharacterId
JOIN StatsBase ON StatsBase.Id = CharacterStats.StatId;
--WHERE CharacterStats.CharacterId = 1;

PRAGMA table_info(statsbase);