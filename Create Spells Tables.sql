DROP TABLE IF EXISTS Spells;

CREATE TABLE IF NOT EXISTS Spells
(
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    Name VARCHAR(16)
    --TODO: ADD RELEVANT FIELDS
    --power cost
    --level
    --"realm"
    
);


DROP TABLE IF EXISTS SpellEffects;

CREATE TABLE IF NOT EXISTS SpellEffects
(
    SpellId INTEGER,
    EffectId INTEGER
);
