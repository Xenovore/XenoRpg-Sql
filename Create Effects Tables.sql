---------------------------------------------------------------
-- EFFECTS
-- • Effects that can be applied to items and spells
---------------------------------------------------------------
DROP TABLE IF EXISTS Effects; --temp

CREATE TABLE IF NOT EXISTS Effects
(
    Id            INTEGER       PRIMARY KEY AUTOINCREMENT,
    Name          VARCHAR (32),
    Description   VARCHAR (255),
    -- Type in EffectTypes
    -- TargetId: prolly don't need in DB
    DamageMin     REAL          DEFAULT 0, -- negative value = heal
    DamageMax     REAL          DEFAULT 0, -- Damage = ( Rand( Max-Min ) + Min ) * Scale
    DamageScale   REAL          DEFAULT 1,
    Duration      INTEGER       DEFAULT 0, -- milliseconds
    Frequency     INTEGER       DEFAULT 0, -- milliseconds
    Source        INTEGER       DEFAULT 0, -- none, pp/use, charge/use
    ChargeRate    REAL          DEFAULT 1.0, --
    PowerLevel    REAL          DEFAULT 1.0,
    PowerCap      REAL          DEFAULT 1.0,
    CanRecharge   BOOLEAN       DEFAULT 1,
    DailyUses     INTEGER       DEFAULT 1,
    CoolDown      INTEGER       DEFAULT 3000, -- when can it be used again
    TriggerTypeId INTEGER       DEFAULT 0,
    Range         INTEGER       DEFAULT 0, -- 0 = self, 1 = touch, > 1 = meters
    Form          INTEGER       DEFAULT 0, -- sphere, cube, plane, path
    AreaX         REAL          DEFAULT 0.0, -- 
    AreaY         REAL          DEFAULT 0.0, -- 
    AreaZ         REAL          DEFAULT 0.0 -- 
);

-- Bleed
INSERT INTO Effects
(
    Name,
    Description,
    DamageMin,
    DamageMax,
    Duration,
    Frequency
)
VALUES
(
    "Bleed 3 over 5",
    "Physical DOT, 3 hp for 5 seconds",
    3,
    3,
    5000,
    1000
);

-- Fire
INSERT INTO Effects
(
    Name,
    Description,
    DamageMin,
    DamageMax,
    Duration,
    Frequency
)
VALUES
(
    "Fiery Blast",
    "Scorching blast of fire",
    10,
    50,
    0, -- INSTANT
    0  -- INSTANT
);


SELECT
*
FROM Effects;


-------------------------------------------------------------------
-- EFFECT TYPES
-------------------------------------------------------------------
DROP TABLE IF EXISTS EffectTypes;

CREATE TABLE IF NOT EXISTS EffectTypes
(
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    EffectId INTEGER, -- Effect that this belongs to
    Name VARCHAR( 16 )
    
);

-------------------------------------------------------------------
-- EFFECT TRIGGERS
-------------------------------------------------------------------
DROP TABLE IF EXISTS EffectTriggers;

CREATE TABLE IF NOT EXISTS EffectTriggers
(
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    EffectId INTEGER, -- Effect that this belongs to
    NAME VARCHAR( 16 )
    
);