----------------------------------------------------------------
-- GET CHARACTER
----------------------------------------------------------------
-- Character Base Info
SELECT
    *
FROM Characters
WHERE Id = 1;

-- GET ALL CHARACTER STATS
SELECT
    StatsBase.Id,
    StatsBase.Name,
    StatsBase.Abbr,
    StatsBase.Description,
    StatsBase.TypeId,
    StatTypes.Name AS TypeName,
    CharacterStats.Level,
    CharacterStats.XpToNextLvl
FROM CharacterStats
JOIN StatsBase ON StatsBase.Id = CharacterStats.StatId
JOIN StatTypes ON StatTypes.Id = StatsBase.TypeId
WHERE CharacterStats.CharacterId = 1; -- @charId
-- AND StatsBase.TypeId = @typeId

-- Character Attributes
SELECT
    *
FROM CharacterStats
JOIN StatsBase ON StatsBase.Id = CharacterStats.StatId
WHERE CharacterId = 1 AND TypeId IN (1, 2, 3);

-- Character Resistances
SELECT
    *
FROM CharacterStats
JOIN StatsBase ON StatsBase.Id = CharacterStats.StatId
WHERE CharacterId = 1 AND TypeId = 4;

-- Character Skills
SELECT
    *
FROM CharacterStats
JOIN StatsBase ON StatsBase.Id = CharacterStats.StatId
WHERE CharacterId = 1 AND TypeId = 5;

