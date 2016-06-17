----------------------------------------------------------------
-- GET CHARACTER
----------------------------------------------------------------
-- Character Base Info
SELECT
*
FROM Characters
WHERE Id = 1;

-- Character Attributes
SELECT
*
FROM StatsCharacter
JOIN StatsBase ON StatsBase.Id = StatsCharacter.StatId
WHERE CharacterId = 1 AND Type IN (1, 2, 3);

-- Character Resistances
SELECT
*
FROM StatsCharacter
JOIN StatsBase ON StatsBase.Id = StatsCharacter.StatId
WHERE CharacterId = 1 AND Type = 4;

-- Character Skills
SELECT
*
FROM StatsCharacter
JOIN StatsBase ON StatsBase.Id = StatsCharacter.StatId
WHERE CharacterId = 1 AND Type = 5;



