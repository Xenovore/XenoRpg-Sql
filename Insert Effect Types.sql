----------------------------------------------
-- INSERT EFFECT TYPES
----------------------------------------------

BEGIN;
INSERT INTO EffectTypes ( Name, Description ) VALUES ( "Physical", "Physical" );
INSERT INTO EffectTypes ( Name, Description ) VALUES ( "Fire", "Fire" );
INSERT INTO EffectTypes ( Name, Description ) VALUES ( "Cold", "Cold" );
INSERT INTO EffectTypes ( Name, Description ) VALUES ( "Electrical", "Electrical" );
INSERT INTO EffectTypes ( Name, Description ) VALUES ( "Poison", "Poison" );
END;
COMMIT;

select * from EffectTypes;