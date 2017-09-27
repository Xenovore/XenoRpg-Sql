--------------------------------------------------------------
-- CREATE & INSERT ITEM TYPES
--------------------------------------------------------------

DROP TABLE IF EXISTS ItemTypes;

CREATE TABLE ItemTypes (
    Value       INTEGER PRIMARY KEY UNIQUE,
    Name        VARCHAR (24),
    IconIndex   INTEGER,
    Description VARCHAR (256) 
);

BEGIN;
INSERT INTO ItemTypes VALUES ( 0x0000000000000000, "None"      ,     00, "None, null, nothing" ); 
                                                                          
-- CONTAINERS                                                             
INSERT INTO ItemTypes VALUES ( 0x0000000000000001, "ContEndo"  ,     05, "Container. 'Endo' = stuff goes into it." ); 
INSERT INTO ItemTypes VALUES ( 0x0000000000000002, "ContSlot"  ,     14, "Container. Single item container (mainly used for body slots). [Could be endo-container with a cap = 1; would free up this bit.]" ); 
INSERT INTO ItemTypes VALUES ( 0x0000000000000004, "ContExo"   ,     05, "Container. Can attach stuff on this, e.g. armor slots. Also displays 3D model in world." ); 
INSERT INTO ItemTypes VALUES ( 0x0000000000000007, "Container" ,     05, "Any/all container types." );

INSERT INTO ItemTypes VALUES ( 0x0000000000000009, "Backpack"  ,     05, "Endo, back" ); 
INSERT INTO ItemTypes VALUES ( 0x000000000B00000C, "BackSheath",     05, "Exo, back: Holds any weapon except thrown" ); 
INSERT INTO ItemTypes VALUES ( 0x0000000001000002, "Sheath"    ,     05, "Sword only (WeaponBlade & ContSlot)" ); 
INSERT INTO ITemTypes VALUES ( 0x0000001000000002, "Bottle"    ,     06, "Liquid-only container (Liquid & ContSlot)" ); 
                                                                          
-- BODY SLOT LOCATIONS, what fits where                                   
INSERT INTO ItemTypes VALUES ( 0x0000000000000008, "BodyBack"  ,     02, "Body Location - Back" ); 
INSERT INTO ItemTypes VALUES ( 0x0000000000000010, "BodyHead"  ,     02, "Body Location - Head" ); 
INSERT INTO ItemTypes VALUES ( 0x0000000000000020, "BodyEar"   ,     02, "Body Location - Ear ? Only used for earring" ); 
INSERT INTO ItemTypes VALUES ( 0x0000000000000040, "BodyFace"  ,     02, "Body Location - Face" ); 
INSERT INTO ItemTypes VALUES ( 0x0000000000000080, "BodyNeck"  ,     02, "Body Location - Neck" ); 
INSERT INTO ItemTypes VALUES ( 0x0000000000000100, "BodyShldr" ,     02, "Body Location - Shoulders" ); 
INSERT INTO ItemTypes VALUES ( 0x0000000000000200, "BodyTorso" ,     02, "Body Location - Torso" ); 
INSERT INTO ItemTypes VALUES ( 0x0000000000000400, "BodyArm"   ,     02, "Body Location - Arm" ); 
INSERT INTO ItemTypes VALUES ( 0x0000000000000800, "BodyWrist" ,     02, "Body Location - Wrist ? Only used for bracelet; bracelet could use arm." ); 
INSERT INTO ItemTypes VALUES ( 0x0000000000001000, "BodyHand"  ,     02, "Body Location - Hand" ); 
INSERT INTO ItemTypes VALUES ( 0x0000000000002000, "BodyWaist" ,     02, "Body Location - Waist" ); 
INSERT INTO ItemTypes VALUES ( 0x0000000000004000, "BodyLeg"   ,     02, "Body Location - Leg" ); 
INSERT INTO ItemTypes VALUES ( 0x0000000000008000, "BodyFoot"  ,     02, "Body Location - Foot" ); 
INSERT INTO ItemTypes VALUES ( 0x000000000000FFF8, "Body"      ,     02, "Any/all body locations." );
                                                                          
-- APPAREL SLOT TYPES                                                     
INSERT INTO ItemTypes VALUES ( 0x0000000000010000, "ApparelCloth"  , 09, "Apparel - Cloth. Layer 1" ); 
INSERT INTO ItemTypes VALUES ( 0x0000000000020000, "ApparelLeather", 09, "Apparel - Leather. Layer 2" ); 
INSERT INTO ItemTypes VALUES ( 0x0000000000040000, "ApparelChain"  , 09, "Apparel - Chain. Layer 3" ); 
INSERT INTO ItemTypes VALUES ( 0x0000000000080000, "ApparelPlate"  , 09, "Apparel - Plate. Layer 4" ); 
                                                                          
INSERT INTO ItemTypes VALUES ( 0x0000000000010008, "ClothBack"    ,  09, "Cloth - Back: Cloak?" ); 
INSERT INTO ItemTypes VALUES ( 0x0000000000010010, "ClothHead"    ,  09, "Cloth - Head: Hat, hood" );
INSERT INTO ItemTypes VALUES ( 0x0000000000010040, "ClothFace"    ,  09, "Cloth - Face: Mask, veil" );
INSERT INTO ItemTypes VALUES ( 0x0000000000010080, "ClothNeck"    ,  09, "Cloth - Neck" );
INSERT INTO ItemTypes VALUES ( 0x0000000000010100, "ClothShldr"   ,  09, "Cloth - Shoulders: Cloak?" ); 
INSERT INTO ItemTypes VALUES ( 0x0000000000010200, "ClothTorso"   ,  09, "Cloth - " );
INSERT INTO ItemTypes VALUES ( 0x0000000000010400, "ClothArm"     ,  09, "Cloth - " );
INSERT INTO ItemTypes VALUES ( 0x0000000000011000, "ClothHand"    ,  09, "Cloth - " );
INSERT INTO ItemTypes VALUES ( 0x0000000000012000, "ClothWaist"   ,  09, "Cloth - " );
INSERT INTO ItemTypes VALUES ( 0x0000000000014000, "ClothLeg"     ,  09, "Cloth - " );
INSERT INTO ItemTypes VALUES ( 0x0000000000018000, "ClothFoot"    ,  09, "Cloth - " );
                                                                          
INSERT INTO ItemTypes VALUES ( 0x0000000000020008, "LeatherBack"  ,  09, "(Probably not used; torso armor is assumed to cover back as well)" ); 
INSERT INTO ItemTypes VALUES ( 0x0000000000020010, "LeatherHead"  ,  09, "Leather - " );
INSERT INTO ItemTypes VALUES ( 0x0000000000020040, "LeatherFace"  ,  09, "Leather - " );
INSERT INTO ItemTypes VALUES ( 0x0000000000020080, "LeatherNeck"  ,  09, "Leather - " );
INSERT INTO ItemTypes VALUES ( 0x0000000000020100, "LeatherShldr" ,  09, "Leather - " );
INSERT INTO ItemTypes VALUES ( 0x0000000000020200, "LeatherTorso" ,  09, "Leather - " );
INSERT INTO ItemTypes VALUES ( 0x0000000000020400, "LeatherArm"   ,  09, "Leather - " );
INSERT INTO ItemTypes VALUES ( 0x0000000000021000, "LeatherHand"  ,  09, "Leather - " );
INSERT INTO ItemTypes VALUES ( 0x0000000000022000, "LeatherWaist" ,  09, "Leather - " );
INSERT INTO ItemTypes VALUES ( 0x0000000000024000, "LeatherLeg"   ,  09, "Leather - " );
INSERT INTO ItemTypes VALUES ( 0x0000000000028000, "LeatherFoot"  ,  09, "Leather - " );
                                                                          
INSERT INTO ItemTypes VALUES ( 0x0000000000040008, "ChainBack"    ,  09, "(Probably not used; torso armor is assumed to cover back as well)" ); 
INSERT INTO ItemTypes VALUES ( 0x0000000000040010, "ChainHead"    ,  09, "Chain - " );
INSERT INTO ItemTypes VALUES ( 0x0000000000040040, "ChainFace"    ,  09, "Chain - " );
INSERT INTO ItemTypes VALUES ( 0x0000000000040080, "ChainNeck"    ,  09, "Chain - " );
INSERT INTO ItemTypes VALUES ( 0x0000000000040100, "ChainShldr"   ,  09, "Chain - " );
INSERT INTO ItemTypes VALUES ( 0x0000000000040200, "ChainTorso"   ,  09, "Chain - " );
INSERT INTO ItemTypes VALUES ( 0x0000000000040400, "ChainArm"     ,  09, "Chain - " );
INSERT INTO ItemTypes VALUES ( 0x0000000000041000, "ChainHand"    ,  09, "Chain - " );
INSERT INTO ItemTypes VALUES ( 0x0000000000042000, "ChainWaist"   ,  09, "Chain - " );
INSERT INTO ItemTypes VALUES ( 0x0000000000044000, "ChainLeg"     ,  09, "Chain - " );
INSERT INTO ItemTypes VALUES ( 0x0000000000048000, "ChainFoot"    ,  09, "Chain - " );
                                                                          
INSERT INTO ItemTypes VALUES ( 0x0000000000080008, "PlateBack"    ,  09, "(Probably not used; torso armor is assumed to cover back as well)" ); 
INSERT INTO ItemTypes VALUES ( 0x0000000000080010, "PlateHead"    ,  09, "" );
INSERT INTO ItemTypes VALUES ( 0x0000000000080040, "PlateFace"    ,  09, "Plate - " );
INSERT INTO ItemTypes VALUES ( 0x0000000000080080, "PlateNeck"    ,  09, "Plate - " );
INSERT INTO ItemTypes VALUES ( 0x0000000000080100, "PlateShldr"   ,  09, "Plate - " );
INSERT INTO ItemTypes VALUES ( 0x0000000000080200, "PlateTorso"   ,  09, "Plate - " );
INSERT INTO ItemTypes VALUES ( 0x0000000000080400, "PlateArm"     ,  09, "Plate - " );
INSERT INTO ItemTypes VALUES ( 0x0000000000081000, "PlateHand"    ,  09, "Plate - " );
INSERT INTO ItemTypes VALUES ( 0x0000000000082000, "PlateWaist"   ,  09, "Plate - " );
INSERT INTO ItemTypes VALUES ( 0x0000000000084000, "PlateLeg"     ,  09, "Plate - " );
INSERT INTO ItemTypes VALUES ( 0x0000000000088000, "PlateFoot"    ,  09, "Plate - " );
                                                                          
-- JEWELRY (Accessories)                                                  
INSERT INTO ItemTypes VALUES ( 0x0000000000100000, "Jewelry"      ,  10, "Jewelry" ); 
INSERT INTO ItemTypes VALUES ( 0x0000000000100020, "Earring"      ,  10, "Jewelry - Ear" );
INSERT INTO ItemTypes VALUES ( 0x0000000000100080, "Necklace"     ,  10, "Jewelry - Neck" );
INSERT INTO ItemTypes VALUES ( 0x0000000000100800, "Bracelet"     ,  13, "Jewelry - Wrist" );
INSERT INTO ItemTypes VALUES ( 0x0000000000101000, "Ring"         ,  13, "Jewelry - Finger" );
INSERT INTO ItemTypes VALUES ( 0x0000000000108000, "Anklet"       ,  13, "Jewelry - Ankle" );

INSERT INTO ItemTypes VALUES ( 0x0000000000200000, "SideRight"    ,  01, "Side - Right (Use sides for items with handedness.)" ); 
INSERT INTO ItemTypes VALUES ( 0x0000000000400000, "SideLeft"     ,  01, "Side - Left" ); 
INSERT INTO ItemTypes VALUES ( 0x0000000000600000, "TwoHanded"    ,  01, "Side - Both (Two-hand slot: bow or 2-H sword/staff)" ); 

INSERT INTO ItemTypes VALUES ( 0x0000000000800000, "Shield"       ,  01, "(Might have shield-only slot)" ); 
                                                                          
-- WEAPONS (Since this is primarily what-goes-where, may not need all of these...)
INSERT INTO ItemTypes VALUES ( 0x0000000001000000, "WeaponBlade"  ,  07, "Weapon - Edged" ); 
INSERT INTO ItemTypes VALUES ( 0x0000000002000000, "WeaponBlunt"  ,  07, "Weapon - Crush" ); 
INSERT INTO ItemTypes VALUES ( 0x0000000004000000, "WeaponThrown" ,  07, "Weapon - Thrown" ); 
INSERT INTO ItemTypes VALUES ( 0x0000000008000000, "WeaponMissile",  07, "Weapon - Launched or fired" ); 
INSERT INTO ItemTypes VALUES ( 0x000000000F000000, "Weapon"       ,  07, "" );

INSERT INTO ItemTypes VALUES ( 0x0000000010000000, "AmmoArrow"    ,  08, "Ammo - Arrow" ); 
INSERT INTO ItemTypes VALUES ( 0x0000000020000000, "AmmoBolt"     ,  08, "Ammo - Bolt (Consolidate with arrow?)" ); 
INSERT INTO ItemTypes VALUES ( 0x0000000040000000, "AmmoBullet"   ,  08, "Ammo - Bullet (Sling, firearm, slingshot)" ); 
INSERT INTO ItemTypes VALUES ( 0x0000000080000000, "AmmoOther"    ,  08, "Ammo - Other (Grenade?)" ); 
INSERT INTO ItemTypes VALUES ( 0x00000000F0000000, "Ammo"         ,  08, "Ammo - Any/All" );

INSERT INTO ItemTypes VALUES ( 0x0000000010000001, "QuiverArrows" ,  05, "Quiver - Arrows only" );
INSERT INTO ItemTypes VALUES ( 0x0000000020000001, "QuiverBolts"  ,  05, "Quiver - Bolts only (Consolidate with arrows?)" );
INSERT INTO ItemTypes VALUES ( 0x0000000040000001, "Magazine"     ,  05, "Bullet container (magazine, clip, bullet bag, etc.)" ); 
INSERT INTO ItemTypes VALUES ( 0x0000000080000001, "AmmoContainer",  05, "Ammo container." ); 
                                                                          
--................................................. (beyond 32 bits)      
                                                                          
INSERT INTO ItemTypes VALUES ( 0x0000000100000000, "Coin"         ,  12, "" ); 
INSERT INTO ItemTypes VALUES ( 0x0000000200000000, "Gem"          ,  11, "" ); 
INSERT INTO ItemTypes VALUES ( 0x0000000400000000, "Herb"         ,  14, "Herbs for potions or reagents" ); 
INSERT INTO ItemTypes VALUES ( 0x0000000800000000, "Craft"        ,  01, "Craft-only item; might have craft bags. Could also be 'junk' item." ); 

INSERT INTO ItemTypes VALUES ( 0x0000001000000000, "Liquid"       ,  15, "Goes in liquid-only containers, e.g. bottles, jars..." ); 
INSERT INTO ItemTypes VALUES ( 0x0000002000000000, "Powder"       ,  01, "Goes in powder-only container, e.g. flour -> sack" ); 
INSERT INTO ItemTypes VALUES ( 0x0000004000000000, "Paper"        ,  01, "Can be written on or used as craft item: note etc." ); 
INSERT INTO ItemTypes VALUES ( 0x0000008000000000, "Socketable"   ,  01, "Can be placed in socket." ); 
                                                                          
--INSERT INTO ItemTypes VALUES ( 0x0000002000000000, "Scroll"     ,  01, "Magic: spell can be inscribed power included" ); 
--INSERT INTO ItemTypes VALUES ( 0x0000004000000000, "Book"       ,  01, "Normal book: history story etc." ); 
--INSERT INTO ItemTypes VALUES ( 0x0000008000000000, "SpellBook"  ,  01, "Magic: spells can be inscribed no power included" ); 
                                                                          
INSERT INTO ItemTypes VALUES ( 0x0000010000000000, "Meat"         ,  01, "Prolly not needed - use 'Edible' flag instead" ); 
INSERT INTO ItemTypes VALUES ( 0x0000020000000000, "Bread"        ,  01, "REMOVE: Prolly not needed - use 'Edible' flag instead" ); 
INSERT INTO ItemTypes VALUES ( 0x0000030000000000, "Food"         ,  01, "TODO: Change to single 'Edible' flag" ); 
                                                                          
INSERT INTO ItemTypes VALUES ( 0x0000040000000000, "Tool1"        ,  01, "Can be used as tool, e.g. can you chop down a tree with this item" ); 
INSERT INTO ItemTypes VALUES ( 0x0000080000000000, "Tool2"        ,  01, "REMOVE: probably don't need 2 tool flags" ); 
                                                                          
INSERT INTO ItemTypes VALUES ( 0x0000100000000000, "Wood"         ,  01, "Material - Wood TODO: Materials should probably be separate." ); 
INSERT INTO ItemTypes VALUES ( 0x0000200000000000, "Metal"        ,  01, "Material - Metal" ); 
INSERT INTO ItemTypes VALUES ( 0x0000400000000000, "Leather2"     ,  01, "Material - Leather" ); 
INSERT INTO ItemTypes VALUES ( 0x0000800000000000, "Plastic"      ,  01, "Material - Plastic" ); 
                                                                          
INSERT INTO ItemTypes VALUES ( 0x0001000000000000, "Unused01"     ,  01, "" ); 
INSERT INTO ItemTypes VALUES ( 0x0002000000000000, "Unused02"     ,  01, "" ); 
INSERT INTO ItemTypes VALUES ( 0x0004000000000000, "Unused03"     ,  01, "" ); 
INSERT INTO ItemTypes VALUES ( 0x0008000000000000, "Unused04"     ,  01, "" ); 

INSERT INTO ItemTypes VALUES ( 0x0010000000000000, "Unused05"     ,  01, "" ); 
INSERT INTO ItemTypes VALUES ( 0x0020000000000000, "Unused06"     ,  01, "" ); 
INSERT INTO ItemTypes VALUES ( 0x0040000000000000, "Unused07"     ,  01, "" ); 
INSERT INTO ItemTypes VALUES ( 0x0080000000000000, "Unused08"     ,  01, "" ); 

INSERT INTO ItemTypes VALUES ( 0x0100000000000000, "Unused09"     ,  01, "" ); 
INSERT INTO ItemTypes VALUES ( 0x0200000000000000, "Unused10"     ,  01, "" ); 
INSERT INTO ItemTypes VALUES ( 0x0400000000000000, "Unused11"     ,  01, "" ); 
INSERT INTO ItemTypes VALUES ( 0x0800000000000000, "Unused12"     ,  01, "" ); 

INSERT INTO ItemTypes VALUES ( 0x1000000000000000, "Unused13"     ,  01, "" ); 
INSERT INTO ItemTypes VALUES ( 0x2000000000000000, "Unused14"     ,  01, "" ); 
INSERT INTO ItemTypes VALUES ( 0x4000000000000000, "Unused15"     ,  01, "" ); 

INSERT INTO ItemTypes VALUES ( 0x4FFFFFFFFFFFFFFF, "Any"          ,  01, "Any/all item types." ); 

--INSERT INTO ItemTypes VALUES ( "NegativeDoNotUse", 0x8000000000000000, 00 ); 64 *** negative value in SQLite; Dapper will not convert to ulong
END;
COMMIT;

-- Use this printf to display hex values...
SELECT printf('%016X', Value) AS HexValue, Name, IconIndex, Description FROM ItemTypes;
select * from itemtypes;
