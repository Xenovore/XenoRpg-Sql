--------------------------------------------------------------
-- CREATE ITEM TYPES
--------------------------------------------------------------
DROP TABLE IF EXISTS ItemTypes;

CREATE TABLE IF NOT EXISTS ItemTypes
(
    Name VARCHAR( 16 ),
    HexValue VARCHAR( 18 ),
    IconIdx INT
);

INSERT INTO ItemTypes VALUES ( "None"          , "0x00000000", 00 );

INSERT INTO ItemTypes VALUES ( "ContEndo"      , "0x00000001", 04 );
INSERT INTO ItemTypes VALUES ( "ContSlot"      , "0x00000002", 14 );
INSERT INTO ItemTypes VALUES ( "ContExo"       , "0x00000004", 04 );
INSERT INTO ItemTypes VALUES ( "Container"     , "0x00000007", 04 );
INSERT INTO ItemTypes VALUES ( "Liquid"        , "0x00000008", 11 );
INSERT INTO ItemTypes VALUES ( "ContLiquid"    , "0x00000009", 06 );

INSERT INTO ItemTypes VALUES ( "BodyHead"      , "0x00000010", 05 ); 
INSERT INTO ItemTypes VALUES ( "BodyEar"       , "0x00000020", 05 );
INSERT INTO ItemTypes VALUES ( "BodyFace"      , "0x00000040", 05 ); 
INSERT INTO ItemTypes VALUES ( "BodyNeck"      , "0x00000080", 05 ); 
INSERT INTO ItemTypes VALUES ( "BodyShldr"     , "0x00000100", 05 ); 
INSERT INTO ItemTypes VALUES ( "BodyTorso"     , "0x00000200", 05 ); 
INSERT INTO ItemTypes VALUES ( "BodyArm"       , "0x00000400", 05 ); 
INSERT INTO ItemTypes VALUES ( "BodyWrist"     , "0x00000800", 05 ); 
INSERT INTO ItemTypes VALUES ( "BodyHand"      , "0x00001000", 05 ); 
INSERT INTO ItemTypes VALUES ( "BodyWaist"     , "0x00002000", 05 ); 
INSERT INTO ItemTypes VALUES ( "BodyLeg"       , "0x00004000", 05 ); 
INSERT INTO ItemTypes VALUES ( "BodyFoot"      , "0x00008000", 05 ); 
INSERT INTO ItemTypes VALUES ( "Body"          , "0x0000FFFF", 05 );

INSERT INTO ItemTypes VALUES ( "Clothing"      , "0x00010000", 03 );
INSERT INTO ItemTypes VALUES ( "ClothingHead"  , "0x00010010", 03 );
INSERT INTO ItemTypes VALUES ( "ClothingFace"  , "0x00010040", 03 );
INSERT INTO ItemTypes VALUES ( "ClothingNeck"  , "0x00010080", 03 );
INSERT INTO ItemTypes VALUES ( "ClothingShldr" , "0x00010100", 03 );
INSERT INTO ItemTypes VALUES ( "ClothingTorso" , "0x00010200", 03 );
INSERT INTO ItemTypes VALUES ( "ClothingArm"   , "0x00010400", 03 );
INSERT INTO ItemTypes VALUES ( "ClothingHand"  , "0x00011000", 03 );
INSERT INTO ItemTypes VALUES ( "ClothingWaist" , "0x00012000", 03 );
INSERT INTO ItemTypes VALUES ( "ClothingLeg"   , "0x00014000", 03 );
INSERT INTO ItemTypes VALUES ( "ClothingFoot"  , "0x00018000", 03 );

INSERT INTO ItemTypes VALUES ( "Armor"         , "0x00020000", 03 );
INSERT INTO ItemTypes VALUES ( "ArmorHead"     , "0x00020010", 03 );
INSERT INTO ItemTypes VALUES ( "ArmorFace"     , "0x00020040", 03 );
INSERT INTO ItemTypes VALUES ( "ArmorNeck"     , "0x00020080", 03 );
INSERT INTO ItemTypes VALUES ( "ArmorShldr"    , "0x00020100", 03 );
INSERT INTO ItemTypes VALUES ( "ArmorTorso"    , "0x00020200", 03 );
INSERT INTO ItemTypes VALUES ( "ArmorArm"      , "0x00020400", 03 );
INSERT INTO ItemTypes VALUES ( "ArmorHand"     , "0x00021000", 03 );
INSERT INTO ItemTypes VALUES ( "ArmorWaist"    , "0x00022000", 03 );
INSERT INTO ItemTypes VALUES ( "ArmorLeg"      , "0x00024000", 03 );
INSERT INTO ItemTypes VALUES ( "ArmorFoot"     , "0x00028000", 03 );

INSERT INTO ItemTypes VALUES ( "Jewelry"       , "0x00040000", 12 );
INSERT INTO ItemTypes VALUES ( "Earring"       , "0x00040020", 12 );
INSERT INTO ItemTypes VALUES ( "Necklace"      , "0x00040080", 12 );
INSERT INTO ItemTypes VALUES ( "Bracelet"      , "0x00040800", 13 );
INSERT INTO ItemTypes VALUES ( "Ring"          , "0x00041000", 13 );
INSERT INTO ItemTypes VALUES ( "Anklet"        , "0x00048000", 13 );

INSERT INTO ItemTypes VALUES ( "Socketable"    , "0x00080000", 00 );

INSERT INTO ItemTypes VALUES ( "SideLeft"      , "0x00100000", 00 );
INSERT INTO ItemTypes VALUES ( "SideRight"     , "0x00200000", 00 );
INSERT INTO ItemTypes VALUES ( "Side3"         , "0x00400000", 00 );
INSERT INTO ItemTypes VALUES ( "Side4"         , "0x00800000", 00 );

INSERT INTO ItemTypes VALUES ( "WeaponBlade"   , "0x01000000", 15 );
INSERT INTO ItemTypes VALUES ( "WeaponBlunt"   , "0x02000000", 15 );
INSERT INTO ItemTypes VALUES ( "WeaponThrown"  , "0x04000000", 15 );
INSERT INTO ItemTypes VALUES ( "WeaponMissile" , "0x08000000", 15 );
INSERT INTO ItemTypes VALUES ( "Weapon"        , "0x0F000000", 15 );

INSERT INTO ItemTypes VALUES ( "Sheath"        , "0x01000002", 00 );

INSERT INTO ItemTypes VALUES ( "AmmoArrow"     , "0x10000000", 01 );
INSERT INTO ItemTypes VALUES ( "AmmoBolt"      , "0x20000000", 01 );
INSERT INTO ItemTypes VALUES ( "AmmoBullet"    , "0x40000000", 01 );
INSERT INTO ItemTypes VALUES ( "AmmoUnused"    , "0x80000000", 01 );
INSERT INTO ItemTypes VALUES ( "Ammo"          , "0xF0000000", 01 );

INSERT INTO ItemTypes VALUES ( "QuiverArrows"  , "0x10000001", 00 );
INSERT INTO ItemTypes VALUES ( "QuiverBolts"   , "0x20000001", 00 );

INSERT INTO ItemTypes VALUES ( "Coin"          , "0x0000000100000000", 07 );
INSERT INTO ItemTypes VALUES ( "Gem"           , "0x0000000200000000", 09 );
INSERT INTO ItemTypes VALUES ( "Herb"          , "0x0000000400000000", 10 );
INSERT INTO ItemTypes VALUES ( "Craft"         , "0x0000000800000000", 00 );

INSERT INTO ItemTypes VALUES ( "Tool"          , "0x0000001000000000", 00 );

/*
INSERT INTO ItemTypes VALUES ( "Meat"          , "0x10000000 -- TODO: Prolly not needed
INSERT INTO ItemTypes VALUES ( "Bread"         , "0x20000000 -- TODO: Prolly not needed
INSERT INTO ItemTypes VALUES ( "Powder"        , "0x40000000 -- TODO: Prolly not needed
INSERT INTO ItemTypes VALUES ( "Fruit"         , "0x00100000 -- TEMP CHANGE
INSERT INTO ItemTypes VALUES ( "Food"          , "Meat | Bread
INSERT INTO ItemTypes VALUES ( "Unused6"       , "0x00200000
INSERT INTO ItemTypes VALUES ( "Unused7"       , "0x00400000
INSERT INTO ItemTypes VALUES ( "Unused8"       , "0x00800000

INSERT INTO ItemTypes VALUES ( "Paper"         , "0x01000000 -- Can be written on or used as craft item: note etc.
INSERT INTO ItemTypes VALUES ( "Scroll"        , "0x02000000 -- Magic: spell can be inscribed power included
INSERT INTO ItemTypes VALUES ( "Book"          , "0x04000000 -- Normal book: history story etc.
INSERT INTO ItemTypes VALUES ( "SpellBook"     , "0x08000000 -- Magic: spells can be inscribed no power included

INSERT INTO ItemTypes VALUES ( "Wood"          , "0x10000000 -- Craft item
INSERT INTO ItemTypes VALUES ( "Metal"         , "0x20000000 -- Craft item
INSERT INTO ItemTypes VALUES ( "Leather"       , "0x40000000 -- Craft item
*/
INSERT INTO ItemTypes VALUES ( "Any"           , "0xFFFFFFFFFFFFFFFF", 2 );

SELECT Name, HexValue FROM ItemTypes;
