---------------------------------------------------------------
-- ITEM EFFECTS
-- • What effects are attached to item
---------------------------------------------------------------
DROP TABLE IF EXISTS ItemEffects;

CREATE TABLE ItemEffects
(
    ItemId INTEGER,
    EffectId INTEGER
);

INSERT INTO ItemEffects
(
    ItemId,
    EffectId
)
VALUES
(
    1, 
    1);
    
