-- CAN'T DO THIS; need to update/insert instead
-- Delete all records and reset auto-increment sequence
--DELETE FROM StatsBase; 
--UPDATE SQLITE_SEQUENCE SET SEQ=0 WHERE NAME='StatsBase';

UPDATE StatsBase
SET
    Name = 'Strength',
    Abbr = 'ST',
    Modifier = 1,
    Type = 1,
    Description = 'Strength affects melee damage'
WHERE Id=1;

INSERT OR IGNORE INTO StatsBase
(
    Name,
    Abbr,
    Modifier,
    Type,
    Description
)
VALUES
(
    'Strength',
    'ST',
    1,
    1,
    'Strength affects melee damage'
);


SELECT * FROM StatsBase;

