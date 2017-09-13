--------------------------------------------------------------
-- CREATE & INSERT ITEM TYPES
--------------------------------------------------------------

DROP TABLE IF EXISTS ItemTypes;

CREATE TABLE IF NOT EXISTS ItemTypes
(
    Name VARCHAR( 16 ),
    Value INT,
    IconIdx INT
);


BEGIN;
INSERT INTO ItemTypes VALUES ( "None"      ,    0x0000000000000000, 00 ); -- 00 (# = primary bit flag)
                                                
-- CONTAINERS                                   
INSERT INTO ItemTypes VALUES ( "ContEndo"  ,    0x0000000000000001, 04 ); -- 01
INSERT INTO ItemTypes VALUES ( "ContSlot"  ,    0x0000000000000002, 14 ); -- 02 -- instead of slot; just check container cap; if = 1, it's a slot
INSERT INTO ItemTypes VALUES ( "ContExo"   ,    0x0000000000000004, 04 ); -- 03 (visible in world)
INSERT INTO ItemTypes VALUES ( "Container" ,    0x0000000000000007, 04 );

INSERT INTO ItemTypes VALUES ( "Backpack"  ,    0x0000000000000009, 04 ); -- Endo, back
INSERT INTO ItemTypes VALUES ( "BackSheath",    0x000000000B00000C, 04 ); -- Exo, back: Holds any weapon except thrown
INSERT INTO ItemTypes VALUES ( "Sheath"    ,    0x0000000001000002, 00 ); -- Sword only (WeaponBlade & ContSlot)
INSERT INTO ITemTypes VALUES ( "Bottle"    ,    0x0000001000000002, 00 ); -- Liquid-only container (Liquid & ContSlot)

-- BODY SLOT LOCATIONS, what fits where
INSERT INTO ItemTypes VALUES ( "BodyBack"     , 0x0000000000000008, 05 ); -- 04
INSERT INTO ItemTypes VALUES ( "BodyHead"     , 0x0000000000000010, 05 ); -- 05 
INSERT INTO ItemTypes VALUES ( "BodyEar"      , 0x0000000000000020, 05 ); -- 06
INSERT INTO ItemTypes VALUES ( "BodyFace"     , 0x0000000000000040, 05 ); -- 07
INSERT INTO ItemTypes VALUES ( "BodyNeck"     , 0x0000000000000080, 05 ); -- 08 
INSERT INTO ItemTypes VALUES ( "BodyShldr"    , 0x0000000000000100, 05 ); -- 09 
INSERT INTO ItemTypes VALUES ( "BodyTorso"    , 0x0000000000000200, 05 ); -- 10 
INSERT INTO ItemTypes VALUES ( "BodyArm"      , 0x0000000000000400, 05 ); -- 11 
INSERT INTO ItemTypes VALUES ( "BodyWrist"    , 0x0000000000000800, 05 ); -- 12 
INSERT INTO ItemTypes VALUES ( "BodyHand"     , 0x0000000000001000, 05 ); -- 13 
INSERT INTO ItemTypes VALUES ( "BodyWaist"    , 0x0000000000002000, 05 ); -- 14 
INSERT INTO ItemTypes VALUES ( "BodyLeg"      , 0x0000000000004000, 05 ); -- 15 
INSERT INTO ItemTypes VALUES ( "BodyFoot"     , 0x0000000000008000, 05 ); -- 16 
INSERT INTO ItemTypes VALUES ( "Body"         , 0x000000000000FFF8, 05 );

-- APPAREL SLOT TYPES
INSERT INTO ItemTypes VALUES ( "Cloth"        , 0x0000000000010000, 03 ); -- 17
INSERT INTO ItemTypes VALUES ( "Leather"      , 0x0000000000020000, 03 ); -- 18
INSERT INTO ItemTypes VALUES ( "Chain"        , 0x0000000000040000, 03 ); -- 19
INSERT INTO ItemTypes VALUES ( "Plate"        , 0x0000000000080000, 03 ); -- 20

INSERT INTO ItemTypes VALUES ( "ClothBack"    , 0x0000000000010008, 03 ); -- Cloak?
INSERT INTO ItemTypes VALUES ( "ClothHead"    , 0x0000000000010010, 03 );
INSERT INTO ItemTypes VALUES ( "ClothFace"    , 0x0000000000010040, 03 );
INSERT INTO ItemTypes VALUES ( "ClothNeck"    , 0x0000000000010080, 03 );
INSERT INTO ItemTypes VALUES ( "ClothShldr"   , 0x0000000000010100, 03 ); -- Cloak?
INSERT INTO ItemTypes VALUES ( "ClothTorso"   , 0x0000000000010200, 03 );
INSERT INTO ItemTypes VALUES ( "ClothArm"     , 0x0000000000010400, 03 );
INSERT INTO ItemTypes VALUES ( "ClothHand"    , 0x0000000000011000, 03 );
INSERT INTO ItemTypes VALUES ( "ClothWaist"   , 0x0000000000012000, 03 );
INSERT INTO ItemTypes VALUES ( "ClothLeg"     , 0x0000000000014000, 03 );
INSERT INTO ItemTypes VALUES ( "ClothFoot"    , 0x0000000000018000, 03 );

INSERT INTO ItemTypes VALUES ( "LeatherBack"  , 0x0000000000020008, 03 ); -- (Probably not used; torso armor is assumed to cover back as well)
INSERT INTO ItemTypes VALUES ( "LeatherHead"  , 0x0000000000020010, 03 );
INSERT INTO ItemTypes VALUES ( "LeatherFace"  , 0x0000000000020040, 03 );
INSERT INTO ItemTypes VALUES ( "LeatherNeck"  , 0x0000000000020080, 03 );
INSERT INTO ItemTypes VALUES ( "LeatherShldr" , 0x0000000000020100, 03 );
INSERT INTO ItemTypes VALUES ( "LeatherTorso" , 0x0000000000020200, 03 );
INSERT INTO ItemTypes VALUES ( "LeatherArm"   , 0x0000000000020400, 03 );
INSERT INTO ItemTypes VALUES ( "LeatherHand"  , 0x0000000000021000, 03 );
INSERT INTO ItemTypes VALUES ( "LeatherWaist" , 0x0000000000022000, 03 );
INSERT INTO ItemTypes VALUES ( "LeatherLeg"   , 0x0000000000024000, 03 );
INSERT INTO ItemTypes VALUES ( "LeatherFoot"  , 0x0000000000028000, 03 );

INSERT INTO ItemTypes VALUES ( "ChainBack"    , 0x0000000000040008, 03 ); -- (Probably not used; torso armor is assumed to cover back as well)
INSERT INTO ItemTypes VALUES ( "ChainHead"    , 0x0000000000040010, 03 );
INSERT INTO ItemTypes VALUES ( "ChainFace"    , 0x0000000000040040, 03 );
INSERT INTO ItemTypes VALUES ( "ChainNeck"    , 0x0000000000040080, 03 );
INSERT INTO ItemTypes VALUES ( "ChainShldr"   , 0x0000000000040100, 03 );
INSERT INTO ItemTypes VALUES ( "ChainTorso"   , 0x0000000000040200, 03 );
INSERT INTO ItemTypes VALUES ( "ChainArm"     , 0x0000000000040400, 03 );
INSERT INTO ItemTypes VALUES ( "ChainHand"    , 0x0000000000041000, 03 );
INSERT INTO ItemTypes VALUES ( "ChainWaist"   , 0x0000000000042000, 03 );
INSERT INTO ItemTypes VALUES ( "ChainLeg"     , 0x0000000000044000, 03 );
INSERT INTO ItemTypes VALUES ( "ChainFoot"    , 0x0000000000048000, 03 );

INSERT INTO ItemTypes VALUES ( "PlateBack"    , 0x0000000000080008, 03 ); -- (Probably not used; torso armor is assumed to cover back as well)
INSERT INTO ItemTypes VALUES ( "PlateHead"    , 0x0000000000080010, 03 );
INSERT INTO ItemTypes VALUES ( "PlateFace"    , 0x0000000000080040, 03 );
INSERT INTO ItemTypes VALUES ( "PlateNeck"    , 0x0000000000080080, 03 );
INSERT INTO ItemTypes VALUES ( "PlateShldr"   , 0x0000000000080100, 03 );
INSERT INTO ItemTypes VALUES ( "PlateTorso"   , 0x0000000000080200, 03 );
INSERT INTO ItemTypes VALUES ( "PlateArm"     , 0x0000000000080400, 03 );
INSERT INTO ItemTypes VALUES ( "PlateHand"    , 0x0000000000081000, 03 );
INSERT INTO ItemTypes VALUES ( "PlateWaist"   , 0x0000000000082000, 03 );
INSERT INTO ItemTypes VALUES ( "PlateLeg"     , 0x0000000000084000, 03 );
INSERT INTO ItemTypes VALUES ( "PlateFoot"    , 0x0000000000088000, 03 );

-- JEWELRY (Accessories)
INSERT INTO ItemTypes VALUES ( "Jewelry"      , 0x0000000000100000, 12 ); -- 21
INSERT INTO ItemTypes VALUES ( "Earring"      , 0x0000000000100020, 12 );
INSERT INTO ItemTypes VALUES ( "Necklace"     , 0x0000000000100080, 12 );
INSERT INTO ItemTypes VALUES ( "Bracelet"     , 0x0000000000100800, 13 );
INSERT INTO ItemTypes VALUES ( "Ring"         , 0x0000000000101000, 13 );
INSERT INTO ItemTypes VALUES ( "Anklet"       , 0x0000000000108000, 13 );

INSERT INTO ItemTypes VALUES ( "SideRight"    , 0x0000000000200000, 00 ); -- 22  
INSERT INTO ItemTypes VALUES ( "SideLeft"     , 0x0000000000400000, 00 ); -- 23
INSERT INTO ItemTypes VALUES ( "TwoHanded"    , 0x0000000000600000, 00 ); --     (Two-hand slot: bow or 2-H sword/staff)

INSERT INTO ItemTypes VALUES ( "Shield"       , 0x0000000000800000, 00 ); -- 24  (Might have shield-only slot)

-- WEAPONS (Since this is primarily what-goes-where, may not need all of these...)
INSERT INTO ItemTypes VALUES ( "WeaponBlade"  , 0x0000000001000000, 15 ); -- 25
INSERT INTO ItemTypes VALUES ( "WeaponBlunt"  , 0x0000000002000000, 15 ); -- 26
INSERT INTO ItemTypes VALUES ( "WeaponThrown" , 0x0000000004000000, 15 ); -- 27
INSERT INTO ItemTypes VALUES ( "WeaponMissile", 0x0000000008000000, 15 ); -- 28 (Launched or fired)
INSERT INTO ItemTypes VALUES ( "Weapon"       , 0x000000000F000000, 15 );

INSERT INTO ItemTypes VALUES ( "AmmoArrow"    , 0x0000000010000000, 01 ); -- 29
INSERT INTO ItemTypes VALUES ( "AmmoBolt"     , 0x0000000020000000, 01 ); -- 30
INSERT INTO ItemTypes VALUES ( "AmmoBullet"   , 0x0000000040000000, 01 ); -- 31
INSERT INTO ItemTypes VALUES ( "AmmoUnused"   , 0x0000000080000000, 01 ); -- 32 (Grenade?)
INSERT INTO ItemTypes VALUES ( "Ammo"         , 0x00000000F0000000, 01 );

INSERT INTO ItemTypes VALUES ( "QuiverArrows" , 0x0000000010000001, 00 );
INSERT INTO ItemTypes VALUES ( "QuiverBolts"  , 0x0000000020000001, 00 );
INSERT INTO ItemTypes VALUES ( "Magazine"     , 0x0000000040000001, 00 ); -- bullet bag, etc
INSERT INTO ItemTypes VALUES ( "AmmoContainer", 0x0000000080000001, 00 ); -- bullet bag, etc

--....................................................................... (beyond 32 bits)

INSERT INTO ItemTypes VALUES ( "Coin"         , 0x0000000100000000, 07 ); -- 33
INSERT INTO ItemTypes VALUES ( "Gem"          , 0x0000000200000000, 09 ); -- 34
INSERT INTO ItemTypes VALUES ( "Herb"         , 0x0000000400000000, 10 ); -- 35 (reagent)
INSERT INTO ItemTypes VALUES ( "Craft"        , 0x0000000800000000, 00 ); -- 36 (Craft item; might have craft bags)

INSERT INTO ItemTypes VALUES ( "Liquid"       , 0x0000001000000000, 00 ); -- 37 (Goes in liquid-only containers, e.g. bottles, jars...)
INSERT INTO ItemTypes VALUES ( "Powder"       , 0x0000002000000000, 00 ); -- 38 (Goes in powder-only container, e.g. flour -> sack)
INSERT INTO ItemTypes VALUES ( "Paper"        , 0x0000004000000000, 00 ); -- 39 (Can be written on or used as craft item: note etc.)
INSERT INTO ItemTypes VALUES ( "Socketable"   , 0x0000008000000000, 00 ); -- 40 (Can be placed in socket)

--INSERT INTO ItemTypes VALUES ( "Scroll"       , 0x0000002000000000, 00 ); -- Magic: spell can be inscribed power included
--INSERT INTO ItemTypes VALUES ( "Book"         , 0x0000004000000000, 00 ); -- Normal book: history story etc.
--INSERT INTO ItemTypes VALUES ( "SpellBook"    , 0x0000008000000000, 00 ); -- Magic: spells can be inscribed no power included

INSERT INTO ItemTypes VALUES ( "Meat"         , 0x0000010000000000, 00 ); -- 41 TODO: Prolly not needed
INSERT INTO ItemTypes VALUES ( "Bread"        , 0x0000020000000000, 00 ); -- 42 TODO: Prolly not needed
INSERT INTO ItemTypes VALUES ( "Food"         , 0x0000030000000000, 00 ); --    TODO: Change to single "Edible" flag?

INSERT INTO ItemTypes VALUES ( "Tool1"        , 0x0000040000000000, 00 ); -- 43 TODO: Change
INSERT INTO ItemTypes VALUES ( "Tool2"        , 0x0000080000000000, 00 ); -- 44 TODO: Change

INSERT INTO ItemTypes VALUES ( "Wood"         , 0x0000100000000000, 00 ); -- 45
INSERT INTO ItemTypes VALUES ( "Metal"        , 0x0000200000000000, 00 ); -- 46
INSERT INTO ItemTypes VALUES ( "Leather"      , 0x0000400000000000, 00 ); -- 47
INSERT INTO ItemTypes VALUES ( "Plastic"      , 0x0000800000000000, 00 ); -- 48

INSERT INTO ItemTypes VALUES ( "Unused01"     , 0x0001000000000000, 00 ); -- 49
INSERT INTO ItemTypes VALUES ( "Unused02"     , 0x0002000000000000, 00 ); -- 50
INSERT INTO ItemTypes VALUES ( "Unused03"     , 0x0004000000000000, 00 ); -- 51
INSERT INTO ItemTypes VALUES ( "Unused04"     , 0x0008000000000000, 00 ); -- 52

INSERT INTO ItemTypes VALUES ( "Unused05"     , 0x0010000000000000, 00 ); -- 53
INSERT INTO ItemTypes VALUES ( "Unused06"     , 0x0020000000000000, 00 ); -- 54
INSERT INTO ItemTypes VALUES ( "Unused07"     , 0x0040000000000000, 00 ); -- 55
INSERT INTO ItemTypes VALUES ( "Unused08"     , 0x0080000000000000, 00 ); -- 56

INSERT INTO ItemTypes VALUES ( "Unused09"     , 0x0100000000000000, 00 ); -- 57
INSERT INTO ItemTypes VALUES ( "Unused10"     , 0x0200000000000000, 00 ); -- 58
INSERT INTO ItemTypes VALUES ( "Unused11"     , 0x0400000000000000, 00 ); -- 59
INSERT INTO ItemTypes VALUES ( "Unused12"     , 0x0800000000000000, 00 ); -- 60

INSERT INTO ItemTypes VALUES ( "Unused13"     , 0x1000000000000000, 00 ); -- 61
INSERT INTO ItemTypes VALUES ( "Unused14"     , 0x2000000000000000, 00 ); -- 62
INSERT INTO ItemTypes VALUES ( "Unused15"     , 0x4000000000000000, 00 ); -- 63

INSERT INTO ItemTypes VALUES ( "NegativeDoNotUse", 0x8000000000000000, 00 ); -- 64 *** negative value in SQLite; Dapper will not convert to ulong

END;
COMMIT;

-- Use this printf to display hex values...
SELECT Name, printf('%016X', Value) AS Value, IconIdx FROM ItemTypes;
