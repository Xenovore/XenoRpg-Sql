---------------------------------------------------------------
-- CREATE CHARACTER STATS
---------------------------------------------------------------
DROP TABLE IF EXISTS StatsCharacter;

CREATE TABLE IF NOT EXISTS StatsCharacter
(
    CharacterId INTEGER,
    StatId      INTEGER, -- REFERENCES StatsBase(Id),
    Level       INTEGER DEFAULT 0,       -- 0 = no ability/knowledge
    LevelTotal  INTEGER DEFAULT 0,  -- Can be calculated, save in DB?
    XpToNextLvl REAL    DEFAULT 0.0
);

INSERT INTO StatsCharacter
(
    CharacterId,
    StatId,
    Level,
    LevelTotal,
    XpToNextLvl
)
VALUES
(
    1,
    1,
    50,
    50,
    0
);

INSERT INTO StatsCharacter
(
    CharacterId,
    StatId,
    Level,
    LevelTotal,
    XpToNextLvl
)
VALUES
(
    1,
    2,
    50,
    50,
    0
);

INSERT INTO StatsCharacter
(
    CharacterId,
    StatId,
    Level,
    LevelTotal,
    XpToNextLvl
)
VALUES
(
    1,
    3,
    50,
    50,
    0
);

INSERT INTO StatsCharacter
(
    CharacterId,
    StatId,
    Level,
    LevelTotal,
    XpToNextLvl
)
VALUES
(
    1,
    4,
    50,
    50,
    0
);

INSERT INTO StatsCharacter
(
    CharacterId,
    StatId,
    Level,
    LevelTotal,
    XpToNextLvl
)
VALUES
(
    1,
    5,
    50,
    50,
    0
);

INSERT INTO StatsCharacter
(
    CharacterId,
    StatId,
    Level,
    LevelTotal,
    XpToNextLvl
)
VALUES
(
    1,
    6,
    50,
    50,
    0
);

INSERT INTO StatsCharacter
(
    CharacterId,
    StatId,
    Level,
    LevelTotal,
    XpToNextLvl
)
VALUES
(
    1,
    7,
    50,
    50,
    0
);

INSERT INTO StatsCharacter
(
    CharacterId,
    StatId,
    Level,
    LevelTotal,
    XpToNextLvl
)
VALUES
(
    1,
    8,
    50,
    50,
    0
);

INSERT INTO StatsCharacter
(
    CharacterId,
    StatId,
    Level,
    LevelTotal,
    XpToNextLvl
)
VALUES
(
    1,
    9,
    50,
    50,
    0
);

INSERT INTO StatsCharacter
(
    CharacterId,
    StatId,
    Level,
    LevelTotal,
    XpToNextLvl
)
VALUES
(
    1,
    10,
    50,
    50,
    0
);

INSERT INTO StatsCharacter
(
    CharacterId,
    StatId,
    Level,
    LevelTotal,
    XpToNextLvl
)
VALUES
(
    1,
    11,
    1,
    1,
    0
);

INSERT INTO StatsCharacter
(
    CharacterId,
    StatId,
    Level,
    LevelTotal,
    XpToNextLvl
)
VALUES
(
    1,
    12,
    1,
    1,
    0
);


INSERT INTO StatsCharacter
(
    CharacterId,
    StatId,
    Level,
    LevelTotal,
    XpToNextLvl
)
VALUES
(
    1,
    13,
    1,
    1,
    0
);

INSERT INTO StatsCharacter
(
    CharacterId,
    StatId,
    Level,
    LevelTotal,
    XpToNextLvl
)
VALUES
(
    1,
    14,
    1,
    1,
    0
);

INSERT INTO StatsCharacter
(
    CharacterId,
    StatId,
    Level,
    LevelTotal,
    XpToNextLvl
)
VALUES
(
    1,
    15,
    1,
    1,
    0
);

INSERT INTO StatsCharacter
(
    CharacterId,
    StatId,
    Level,
    LevelTotal,
    XpToNextLvl
)
VALUES
(
    1,
    16,
    1,
    1,
    0
);

INSERT INTO StatsCharacter
(
    CharacterId,
    StatId,
    Level,
    LevelTotal,
    XpToNextLvl
)
VALUES
(
    1,
    17,
    1,
    1,
    0
);

INSERT INTO StatsCharacter
(
    CharacterId,
    StatId,
    Level,
    LevelTotal,
    XpToNextLvl
)
VALUES
(
    1,
    18,
    1,
    1,
    0
);

INSERT INTO StatsCharacter
(
    CharacterId,
    StatId,
    Level,
    LevelTotal,
    XpToNextLvl
)
VALUES
(
    1,
    19,
    1,
    1,
    0
);



------------------------------------------------------------------

SELECT * FROM Characters WHERE Characters.Id = 1;

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
    StatsCharacter.Level AS CurrentLvl,
    StatsCharacter.XPToNextLvl
FROM StatsCharacter
JOIN Characters ON Characters.Id = StatsCharacter.CharacterId
JOIN StatsBase ON StatsBase.Id = StatsCharacter.StatId
WHERE StatsCharacter.CharacterId = 1;

