-- CREATE INITIAL STATS

-- Nuke all stats and reset autoincrement sequence
DELETE FROM StatsBase; 
UPDATE SQLITE_SEQUENCE SET SEQ=0 WHERE NAME='StatsBase';


--==================================================================================================
-- ATTRIBUTES
---------------------------------------------------------------
INSERT INTO StatsBase
(
    Name,
    Abbr,
    Type,
    LevelMin,
    LevelBaseLo,
    LevelBaseHi,
    LevelMax,
    ScorePerLvl,
    XPCost,
    Description
)
VALUES
(
    "Strength",
    "ST",
    1, -- AttrPhys
    10,
    50,
    50,
    100,
    1,
    1000,
    "Affects melee damage and carry capacity."
);

INSERT INTO StatsBase
(
    Name,
    Abbr,
    Type,
    LevelMin,
    LevelBaseLo,
    LevelBaseHi,
    LevelMax,
    ScorePerLvl,
    XPCost,
    Description
)
VALUES
(
    "Constitution",
    "CN",
    1, -- AttrPhys
    10,
    50,
    50,
    100,
    1,
    1000,
    "Affects hit points and health resists."
);


INSERT INTO StatsBase
(
    Name,
    Abbr,
    Type,
    LevelMin,
    LevelBaseLo,
    LevelBaseHi,
    LevelMax,
    ScorePerLvl,
    XPCost,
    Description
)
VALUES
(
    "Dexterity",
    "DX",
    1, -- AttrPhys
    10,
    50,
    50,
    100,
    1,
    1000,
    "Affects chance to hit."
);


INSERT INTO StatsBase
(
    Name,
    Abbr,
    Type,
    LevelMin,
    LevelBaseLo,
    LevelBaseHi,
    LevelMax,
    ScorePerLvl,
    XPCost,
    Description
)
VALUES
(
    "Reflex",
    "RF",
    1, -- AttrPhys
    10,
    50,
    50,
    100,
    1,
    1000,
    "Affects initiative and chance to dodge."
);


INSERT INTO StatsBase
(
    Name,
    Abbr,
    Type,
    LevelMin,
    LevelBaseLo,
    LevelBaseHi,
    LevelMax,
    ScorePerLvl,
    XPCost,
    Description
)
VALUES
(
    "Appearance",
    "AP",
    1, -- AttrPhys
    10,
    50,
    50,
    100,
    1,
    1000,
    "Affects encounters."
);


INSERT INTO StatsBase
(
    Name,
    Abbr,
    Type,
    LevelMin,
    LevelBaseLo,
    LevelBaseHi,
    LevelMax,
    ScorePerLvl,
    XPCost,
    Description
)
VALUES
(
    "Intelligence",
    "IG",
    2, -- AttrMental
    10,
    50,
    50,
    100,
    1,
    1000,
    "Affects learning and casting ability."
);

INSERT INTO StatsBase
(
    Name,
    Abbr,
    Type,
    LevelMin,
    LevelBaseLo,
    LevelBaseHi,
    LevelMax,
    ScorePerLvl,
    XPCost,
    Description
)
VALUES
(
    "Intuition",
    "IT",
    2, -- AttrMental
    10,
    50,
    50,
    100,
    1,
    1000,
    "Affects perception and art skills."
);

INSERT INTO StatsBase
(
    Name,
    Abbr,
    Type,
    LevelMin,
    LevelBaseLo,
    LevelBaseHi,
    LevelMax,
    ScorePerLvl,
    XPCost,
    Description
)
VALUES
(
    "Discipline",
    "DS",
    2, -- AttrMental
    10,
    50,
    50,
    100,
    1,
    1000,
    "Affects willpower and focus."
);

INSERT INTO StatsBase
(
    Name,
    Abbr,
    Type,
    LevelMin,
    LevelBaseLo,
    LevelBaseHi,
    LevelMax,
    ScorePerLvl,
    XPCost,
    Description
)
VALUES
(
    "Tech",
    "TC",
    2, -- AttrMental
    10,
    50,
    50,
    100,
    1,
    1000,
    "Affects technical skills."
);

INSERT INTO StatsBase
(
    Name,
    Abbr,
    Type,
    LevelMin,
    LevelBaseLo,
    LevelBaseHi,
    LevelMax,
    ScorePerLvl,
    XPCost,
    Description
)
VALUES
(
    "Presence",
    "PR",
    2, -- AttrMental
    10,
    50,
    50,
    100,
    1,
    1000,
    "Affects encounters."
);

INSERT INTO StatsBase
(
    Name,
    Abbr,
    Type,
    LevelMin,
    LevelBaseLo,
    LevelBaseHi,
    LevelMax,
    ScorePerLvl,
    XPCost,
    Description
)
VALUES
(
    "Essence",
    "ESS",
    3, -- AttrSpec
    1,
    1,
    1,
    10000,
    1,
    1000,
    "Amount of Essence power"
);

INSERT INTO StatsBase
(
    Name,
    Abbr,
    Type,
    LevelMin,
    LevelBaseLo,
    LevelBaseHi,
    LevelMax,
    ScorePerLvl,
    XPCost,
    Description
)
VALUES
(
    "Faith",
    "FTH",
    3, -- AttrSpec
    1,
    1,
    1,
    10000,
    1,
    1000,
    "Amount of Faith power"
);

INSERT INTO StatsBase
(
    Name,
    Abbr,
    Type,
    LevelMin,
    LevelBaseLo,
    LevelBaseHi,
    LevelMax,
    ScorePerLvl,
    XPCost,
    Description
)
VALUES
(
    "Mentalism",
    "MNT",
    3, -- AttrSpec
    1,
    1,
    1,
    10000,
    1,
    1000,
    "Amount of Mentalism power"
);

INSERT INTO StatsBase
(
    Name,
    Abbr,
    Type,
    LevelMin,
    LevelBaseLo,
    LevelBaseHi,
    LevelMax,
    ScorePerLvl,
    XPCost,
    Description
)
VALUES
(
    "Hit Points",
    "HP",
    3, -- AttrSpec
    1,
    1,
    1,
    10000,
    1,
    1000,
    "Amount of hit points"
);




--==================================================================================================
-- RESISTANCES
-- • Resistances work like skills, but typically cannot be increased through XP gain
---------------------------------------------------------------
INSERT INTO StatsBase
(
    Name,
    Abbr,
    Type,
    LevelMin,
    LevelBaseLo,
    LevelBaseHi,
    LevelMax,
    ScorePerLvl,
    XPCost,
    Description
)
VALUES
(
    "Resistance vs Poison",
    "RRPSN",
    4, -- AttrSpec
    1,
    1,
    1,
    20,
    5,
    1000,
    "Resistance vs Poison"
);


INSERT INTO StatsBase
(
    Name,
    Abbr,
    Type,
    LevelMin,
    LevelBaseLo,
    LevelBaseHi,
    LevelMax,
    ScorePerLvl,
    XPCost,
    Description
)
VALUES
(
    "Resistance vs Disease",
    "RRDIS",
    4, -- AttrSpec
    1,
    1,
    1,
    20,
    5,
    1000,
    "Resistance vs Disease"
);


INSERT INTO StatsBase
(
    Name,
    Abbr,
    Type,
    LevelMin,
    LevelBaseLo,
    LevelBaseHi,
    LevelMax,
    ScorePerLvl,
    XPCost,
    Description
)
VALUES
(
    "Resistance vs Death",
    "RRDTH",
    4, -- AttrSpec
    1,
    1,
    1,
    20,
    5,
    1000,
    "Resistance vs Death"
);


--==================================================================================================
-- SKILLS
---------------------------------------------------------------
INSERT INTO StatsBase
(
    Name,
    Abbr,
    Type,
    LevelMin,
    LevelBaseLo,
    LevelBaseHi,
    LevelMax,
    ScorePerLvl,
    XPCost,
    Description
)
VALUES
(
    "Initiative",
    "INIT",
    5, -- Skill
    1,
    1,
    1,
    20,
    5,
    1000,
    "Initiative"
);

INSERT INTO StatsBase
(
    Name,
    Abbr,
    Type,
    LevelMin,
    LevelBaseLo,
    LevelBaseHi,
    LevelMax,
    ScorePerLvl,
    XPCost,
    Description
)
VALUES
(
    "Dodge",
    "DODG",
    5, -- AttrSpec
    1,
    1,
    1,
    20,
    5,
    1000,
    "Dodge"
);

INSERT INTO StatsBase
(
    Name,
    Abbr,
    Type,
    LevelMin,
    LevelBaseLo,
    LevelBaseHi,
    LevelMax,
    ScorePerLvl,
    XPCost,
    Description
)
VALUES
(
    "1-H Sword",
    "SW1H",
    5, -- AttrSpec
    1,
    1,
    1,
    20,
    5,
    1000,
    "Skill with 1-handed swords."
);


--==================================================================================================
-- SPECIAL ABILITIES
-- • Stuff like special one-time bonus
---------------------------------------------------------------
INSERT INTO StatsBase
(
    Name,
    Abbr,
    Type,
    LevelMin,
    LevelBaseLo,
    LevelBaseHi,
    LevelMax,
    ScorePerLvl,
    XPCost,
    Description
)
VALUES
(
    "Extra Strong",
    "XSTR",
    6, -- AttrSpec
    1,
    1,
    1,
    1,
    20,
    0,
    "One-time buff to Strength"
);



--==================================================================================================

-- All Attributes
SELECT 
*,
( SELECT Name FROM StatTypes WHERE StatTypes.Id = StatsBase.Type ) AS StatType
FROM StatsBase
WHERE StatsBase.Type IN ( 1, 2, 3 );

-- All Skills
SELECT 
*,
( SELECT Name FROM StatTypes WHERE StatTypes.Id = StatsBase.Type ) AS StatType
FROM StatsBase
WHERE StatsBase.Type IN ( 4 );

-- All Misc
SELECT
*,
( SELECT Name FROM StatTypes WHERE StatTypes.Id = StatsBase.Type ) AS TypeName
FROM StatsBase
WHERE StatsBase.Type NOT IN ( 1, 2, 3, 4 );


SELECT * FROM StatsBase
