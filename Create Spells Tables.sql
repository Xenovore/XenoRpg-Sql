DROP TABLE IF EXISTS Spells;

CREATE TABLE IF NOT EXISTS Spells
(
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    Name VARCHAR(16)
    --TODO: ADD RELEVANT FIELDS
    --power cost
    --level/difficulty: should be mostly calculated off power requirements (which are calculated off area, range, etc.)
    --"realm" = Skill attribute, i.e. which skill this spell requires
    
);

-- TODO: FIGURE OUT HOW TO HANDLE SPELL LEVEL VS EFFECT LEVEL
-- Effect could scale from spell properties

DROP TABLE IF EXISTS SpellEffects_map;

CREATE TABLE IF NOT EXISTS SpellEffects_map
(
    SpellId INTEGER,
    EffectId INTEGER
);
