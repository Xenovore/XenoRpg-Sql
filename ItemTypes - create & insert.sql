--------------------------------------------------------------
-- CREATE & INSERT ITEM TYPES
--------------------------------------------------------------

DROP TABLE IF EXISTS ItemTypes;

CREATE TABLE ItemTypes (
    Value       INTEGER PRIMARY KEY UNIQUE,
    Name        VARCHAR (24),
    IconIdx     INTEGER,
    Description VARCHAR (256) 
);

BEGIN;
INSERT INTO ItemTypes VALUES ( 0x0000000000000000, "None"      ,     00, "None, null, nothing" ); 
                                                                          
-- CONTAINERS                                                             
INSERT INTO ItemTypes VALUES ( 0x0000000000000001, "ContEndo"  ,     04, "Container. 'Endo' = stuff goes into it." ); 
INSERT INTO ItemTypes VALUES ( 0x0000000000000002, "ContSlot"  ,     14, "Container. Single item container (mainly used for body slots). [Could be endo-container with a cap = 1; would free up this bit.]" ); 
INSERT INTO ItemTypes VALUES ( 0x0000000000000004, "ContExo"   ,     04, "Container. Can attach stuff on this, e.g. armor slots. Also displays 3D model in world." ); 
INSERT INTO ItemTypes VALUES ( 0x0000000000000007, "Container" ,     04, "Any/all container types." );

INSERT INTO ItemTypes VALUES ( 0x0000000000000009, "Backpack"  ,     04, "Endo, back" ); 
INSERT INTO ItemTypes VALUES ( 0x000000000B00000C, "BackSheath",     04, "Exo, back: Holds any weapon except thrown" ); 
INSERT INTO ItemTypes VALUES ( 0x0000000001000002, "Sheath"    ,     14, "Sword only (WeaponBlade & ContSlot)" ); 
INSERT INTO ITemTypes VALUES ( 0x0000001000000002, "Bottle"    ,     06, "Liquid-only container (Liquid & ContSlot)" ); 
                                                                          
-- BODY SLOT LOCATIONS, what fits where                                   
INSERT INTO ItemTypes VALUES ( 0x0000000000000008, "BodyBack"  ,     05, "Body Location - Back" ); 
INSERT INTO ItemTypes VALUES ( 0x0000000000000010, "BodyHead"  ,     05, "Body Location - Head" ); 
INSERT INTO ItemTypes VALUES ( 0x0000000000000020, "BodyEar"   ,     05, "Body Location - Ear ? Only used for earring" ); 
INSERT INTO ItemTypes VALUES ( 0x0000000000000040, "BodyFace"  ,     05, "Body Location - Face" ); 
INSERT INTO ItemTypes VALUES ( 0x0000000000000080, "BodyNeck"  ,     05, "Body Location - Neck" ); 
INSERT INTO ItemTypes VALUES ( 0x0000000000000100, "BodyShldr" ,     05, "Body Location - Shoulders" ); 
INSERT INTO ItemTypes VALUES ( 0x0000000000000200, "BodyTorso" ,     05, "Body Location - Torso" ); 
INSERT INTO ItemTypes VALUES ( 0x0000000000000400, "BodyArm"   ,     05, "Body Location - Arm" ); 
INSERT INTO ItemTypes VALUES ( 0x0000000000000800, "BodyWrist" ,     05, "Body Location - Wrist ? Only used for bracelet; bracelet could use arm." ); 
INSERT INTO ItemTypes VALUES ( 0x0000000000001000, "BodyHand"  ,     05, "Body Location - Hand" ); 
INSERT INTO ItemTypes VALUES ( 0x0000000000002000, "BodyWaist" ,     05, "Body Location - Waist" ); 
INSERT INTO ItemTypes VALUES ( 0x0000000000004000, "BodyLeg"   ,     05, "Body Location - Leg" ); 
INSERT INTO ItemTypes VALUES ( 0x0000000000008000, "BodyFoot"  ,     05, "Body Location - Foot" ); 
INSERT INTO ItemTypes VALUES ( 0x000000000000FFF8, "Body"      ,     05, "Any/all body locations." );
                                                                          
-- APPAREL SLOT TYPES                                                     
INSERT INTO ItemTypes VALUES ( 0x0000000000010000, "ApparelCloth"  , 03, "Apparel - Cloth. Layer 1" ); 
INSERT INTO ItemTypes VALUES ( 0x0000000000020000, "ApparelLeather", 03, "Apparel - Leather. Layer 2" ); 
INSERT INTO ItemTypes VALUES ( 0x0000000000040000, "ApparelChain"  , 03, "Apparel - Chain. Layer 3" ); 
INSERT INTO ItemTypes VALUES ( 0x0000000000080000, "ApparelPlate"  , 03, "Apparel - Plate. Layer 4" ); 
                                                                          
INSERT INTO ItemTypes VALUES ( 0x0000000000010008, "ClothBack"    ,  03, "Cloth - Back: Cloak?" ); 
INSERT INTO ItemTypes VALUES ( 0x0000000000010010, "ClothHead"    ,  03, "Cloth - Head: Hat, hood" );
INSERT INTO ItemTypes VALUES ( 0x0000000000010040, "ClothFace"    ,  03, "Cloth - Face: Mask, veil" );
INSERT INTO ItemTypes VALUES ( 0x0000000000010080, "ClothNeck"    ,  03, "Cloth - Neck" );
INSERT INTO ItemTypes VALUES ( 0x0000000000010100, "ClothShldr"   ,  03, "Cloth - Shoulders: Cloak?" ); 
INSERT INTO ItemTypes VALUES ( 0x0000000000010200, "ClothTorso"   ,  03, "Cloth - " );
INSERT INTO ItemTypes VALUES ( 0x0000000000010400, "ClothArm"     ,  03, "Cloth - " );
INSERT INTO ItemTypes VALUES ( 0x0000000000011000, "ClothHand"    ,  03, "Cloth - " );
INSERT INTO ItemTypes VALUES ( 0x0000000000012000, "ClothWaist"   ,  03, "Cloth - " );
INSERT INTO ItemTypes VALUES ( 0x0000000000014000, "ClothLeg"     ,  03, "Cloth - " );
INSERT INTO ItemTypes VALUES ( 0x0000000000018000, "ClothFoot"    ,  03, "Cloth - " );
                                                                          
INSERT INTO ItemTypes VALUES ( 0x0000000000020008, "LeatherBack"  ,  03, "(Probably not used; torso armor is assumed to cover back as well)" ); 
INSERT INTO ItemTypes VALUES ( 0x0000000000020010, "LeatherHead"  ,  03, "Leather - " );
INSERT INTO ItemTypes VALUES ( 0x0000000000020040, "LeatherFace"  ,  03, "Leather - " );
INSERT INTO ItemTypes VALUES ( 0x0000000000020080, "LeatherNeck"  ,  03, "Leather - " );
INSERT INTO ItemTypes VALUES ( 0x0000000000020100, "LeatherShldr" ,  03, "Leather - " );
INSERT INTO ItemTypes VALUES ( 0x0000000000020200, "LeatherTorso" ,  03, "Leather - " );
INSERT INTO ItemTypes VALUES ( 0x0000000000020400, "LeatherArm"   ,  03, "Leather - " );
INSERT INTO ItemTypes VALUES ( 0x0000000000021000, "LeatherHand"  ,  03, "Leather - " );
INSERT INTO ItemTypes VALUES ( 0x0000000000022000, "LeatherWaist" ,  03, "Leather - " );
INSERT INTO ItemTypes VALUES ( 0x0000000000024000, "LeatherLeg"   ,  03, "Leather - " );
INSERT INTO ItemTypes VALUES ( 0x0000000000028000, "LeatherFoot"  ,  03, "Leather - " );
                                                                          
INSERT INTO ItemTypes VALUES ( 0x0000000000040008, "ChainBack"    ,  03, "(Probably not used; torso armor is assumed to cover back as well)" ); 
INSERT INTO ItemTypes VALUES ( 0x0000000000040010, "ChainHead"    ,  03, "Chain - " );
INSERT INTO ItemTypes VALUES ( 0x0000000000040040, "ChainFace"    ,  03, "Chain - " );
INSERT INTO ItemTypes VALUES ( 0x0000000000040080, "ChainNeck"    ,  03, "Chain - " );
INSERT INTO ItemTypes VALUES ( 0x0000000000040100, "ChainShldr"   ,  03, "Chain - " );
INSERT INTO ItemTypes VALUES ( 0x0000000000040200, "ChainTorso"   ,  03, "Chain - " );
INSERT INTO ItemTypes VALUES ( 0x0000000000040400, "ChainArm"     ,  03, "Chain - " );
INSERT INTO ItemTypes VALUES ( 0x0000000000041000, "ChainHand"    ,  03, "Chain - " );
INSERT INTO ItemTypes VALUES ( 0x0000000000042000, "ChainWaist"   ,  03, "Chain - " );
INSERT INTO ItemTypes VALUES ( 0x0000000000044000, "ChainLeg"     ,  03, "Chain - " );
INSERT INTO ItemTypes VALUES ( 0x0000000000048000, "ChainFoot"    ,  03, "Chain - " );
                                                                          
INSERT INTO ItemTypes VALUES ( 0x0000000000080008, "PlateBack"    ,  03, "(Probably not used; torso armor is assumed to cover back as well)" ); 
INSERT INTO ItemTypes VALUES ( 0x0000000000080010, "PlateHead"    ,  03, "" );
INSERT INTO ItemTypes VALUES ( 0x0000000000080040, "PlateFace"    ,  03, "Plate - " );
INSERT INTO ItemTypes VALUES ( 0x0000000000080080, "PlateNeck"    ,  03, "Plate - " );
INSERT INTO ItemTypes VALUES ( 0x0000000000080100, "PlateShldr"   ,  03, "Plate - " );
INSERT INTO ItemTypes VALUES ( 0x0000000000080200, "PlateTorso"   ,  03, "Plate - " );
INSERT INTO ItemTypes VALUES ( 0x0000000000080400, "PlateArm"     ,  03, "Plate - " );
INSERT INTO ItemTypes VALUES ( 0x0000000000081000, "PlateHand"    ,  03, "Plate - " );
INSERT INTO ItemTypes VALUES ( 0x0000000000082000, "PlateWaist"   ,  03, "Plate - " );
INSERT INTO ItemTypes VALUES ( 0x0000000000084000, "PlateLeg"     ,  03, "Plate - " );
INSERT INTO ItemTypes VALUES ( 0x0000000000088000, "PlateFoot"    ,  03, "Plate - " );
                                                                          
-- JEWELRY (Accessories)                                                  
INSERT INTO ItemTypes VALUES ( 0x0000000000100000, "Jewelry"      ,  12, "Jewelry" ); 
INSERT INTO ItemTypes VALUES ( 0x0000000000100020, "Earring"      ,  12, "Jewelry - Ear" );
INSERT INTO ItemTypes VALUES ( 0x0000000000100080, "Necklace"     ,  12, "Jewelry - Neck" );
INSERT INTO ItemTypes VALUES ( 0x0000000000100800, "Bracelet"     ,  13, "Jewelry - Wrist" );
INSERT INTO ItemTypes VALUES ( 0x0000000000101000, "Ring"         ,  13, "Jewelry - Finger" );
INSERT INTO ItemTypes VALUES ( 0x0000000000108000, "Anklet"       ,  13, "Jewelry - Ankle" );

INSERT INTO ItemTypes VALUES ( 0x0000000000200000, "SideRight"    ,  14, "Side - Right (Use sides for items with handedness.)" ); 
INSERT INTO ItemTypes VALUES ( 0x0000000000400000, "SideLeft"     ,  14, "Side - Left" ); 
INSERT INTO ItemTypes VALUES ( 0x0000000000600000, "TwoHanded"    ,  14, "Side - Both (Two-hand slot: bow or 2-H sword/staff)" ); 

INSERT INTO ItemTypes VALUES ( 0x0000000000800000, "Shield"       ,  00, "(Might have shield-only slot)" ); 
                                                                          
-- WEAPONS (Since this is primarily what-goes-where, may not need all of these...)
INSERT INTO ItemTypes VALUES ( 0x0000000001000000, "WeaponBlade"  ,  15, "Weapon - Edged" ); 
INSERT INTO ItemTypes VALUES ( 0x0000000002000000, "WeaponBlunt"  ,  15, "Weapon - Crush" ); 
INSERT INTO ItemTypes VALUES ( 0x0000000004000000, "WeaponThrown" ,  15, "Weapon - Thrown" ); 
INSERT INTO ItemTypes VALUES ( 0x0000000008000000, "WeaponMissile",  15, "Weapon - Launched or fired" ); 
INSERT INTO ItemTypes VALUES ( 0x000000000F000000, "Weapon"       ,  15, "" );

INSERT INTO ItemTypes VALUES ( 0x0000000010000000, "AmmoArrow"    ,  01, "Ammo - Arrow" ); 
INSERT INTO ItemTypes VALUES ( 0x0000000020000000, "AmmoBolt"     ,  01, "Ammo - Bolt (Consolidate with arrow?)" ); 
INSERT INTO ItemTypes VALUES ( 0x0000000040000000, "AmmoBullet"   ,  01, "Ammo - Bullet (Sling, firearm, slingshot)" ); 
INSERT INTO ItemTypes VALUES ( 0x0000000080000000, "AmmoOther"    ,  01, "Ammo - Other (Grenade?)" ); 
INSERT INTO ItemTypes VALUES ( 0x00000000F0000000, "Ammo"         ,  01, "Ammo - Any/All" );

INSERT INTO ItemTypes VALUES ( 0x0000000010000001, "QuiverArrows" ,  04, "Quiver - Arrows only" );
INSERT INTO ItemTypes VALUES ( 0x0000000020000001, "QuiverBolts"  ,  04, "Quiver - Bolts only (Consolidate with arrows?)" );
INSERT INTO ItemTypes VALUES ( 0x0000000040000001, "Magazine"     ,  04, "Bullet container (magazine, clip, bullet bag, etc.)" ); 
INSERT INTO ItemTypes VALUES ( 0x0000000080000001, "AmmoContainer",  04, "Ammo container." ); 
                                                                          
--................................................. (beyond 32 bits)      
                                                                          
INSERT INTO ItemTypes VALUES ( 0x0000000100000000, "Coin"         ,  07, "" ); 
INSERT INTO ItemTypes VALUES ( 0x0000000200000000, "Gem"          ,  09, "" ); 
INSERT INTO ItemTypes VALUES ( 0x0000000400000000, "Herb"         ,  10, "Herbs for potions or reagents" ); 
INSERT INTO ItemTypes VALUES ( 0x0000000800000000, "Craft"        ,  00, "Craft-only item; might have craft bags. Could also be 'junk' item." ); 

INSERT INTO ItemTypes VALUES ( 0x0000001000000000, "Liquid"       ,  11, "Goes in liquid-only containers, e.g. bottles, jars..." ); 
INSERT INTO ItemTypes VALUES ( 0x0000002000000000, "Powder"       ,  00, "Goes in powder-only container, e.g. flour -> sack" ); 
INSERT INTO ItemTypes VALUES ( 0x0000004000000000, "Paper"        ,  00, "Can be written on or used as craft item: note etc." ); 
INSERT INTO ItemTypes VALUES ( 0x0000008000000000, "Socketable"   ,  00, "Can be placed in socket." ); 
                                                                          
--INSERT INTO ItemTypes VALUES ( 0x0000002000000000, "Scroll"     ,  00, "Magic: spell can be inscribed power included" ); 
--INSERT INTO ItemTypes VALUES ( 0x0000004000000000, "Book"       ,  00, "Normal book: history story etc." ); 
--INSERT INTO ItemTypes VALUES ( 0x0000008000000000, "SpellBook"  ,  00, "Magic: spells can be inscribed no power included" ); 
                                                                          
INSERT INTO ItemTypes VALUES ( 0x0000010000000000, "Meat"         ,  00, "Prolly not needed - use 'Edible' flag instead" ); 
INSERT INTO ItemTypes VALUES ( 0x0000020000000000, "Bread"        ,  00, "REMOVE: Prolly not needed - use 'Edible' flag instead" ); 
INSERT INTO ItemTypes VALUES ( 0x0000030000000000, "Food"         ,  00, "TODO: Change to single 'Edible' flag" ); 
                                                                          
INSERT INTO ItemTypes VALUES ( 0x0000040000000000, "Tool1"        ,  00, "Can be used as tool, e.g. can you chop down a tree with this item" ); 
INSERT INTO ItemTypes VALUES ( 0x0000080000000000, "Tool2"        ,  00, "REMOVE: probably don't need 2 tool flags" ); 
                                                                          
INSERT INTO ItemTypes VALUES ( 0x0000100000000000, "Wood"         ,  00, "Material - Wood TODO: Materials should probably be separate." ); 
INSERT INTO ItemTypes VALUES ( 0x0000200000000000, "Metal"        ,  00, "Material - Metal" ); 
INSERT INTO ItemTypes VALUES ( 0x0000400000000000, "Leather2"     ,  00, "Material - Leather" ); 
INSERT INTO ItemTypes VALUES ( 0x0000800000000000, "Plastic"      ,  00, "Material - Plastic" ); 
                                                                          
INSERT INTO ItemTypes VALUES ( 0x0001000000000000, "Unused01"     ,  02, "" ); 
INSERT INTO ItemTypes VALUES ( 0x0002000000000000, "Unused02"     ,  02, "" ); 
INSERT INTO ItemTypes VALUES ( 0x0004000000000000, "Unused03"     ,  02, "" ); 
INSERT INTO ItemTypes VALUES ( 0x0008000000000000, "Unused04"     ,  02, "" ); 
                                                                          
INSERT INTO ItemTypes VALUES ( 0x0010000000000000, "Unused05"     ,  02, "" ); 
INSERT INTO ItemTypes VALUES ( 0x0020000000000000, "Unused06"     ,  02, "" ); 
INSERT INTO ItemTypes VALUES ( 0x0040000000000000, "Unused07"     ,  02, "" ); 
INSERT INTO ItemTypes VALUES ( 0x0080000000000000, "Unused08"     ,  02, "" ); 
                                                                          
INSERT INTO ItemTypes VALUES ( 0x0100000000000000, "Unused09"     ,  02, "" ); 
INSERT INTO ItemTypes VALUES ( 0x0200000000000000, "Unused10"     ,  02, "" ); 
INSERT INTO ItemTypes VALUES ( 0x0400000000000000, "Unused11"     ,  02, "" ); 
INSERT INTO ItemTypes VALUES ( 0x0800000000000000, "Unused12"     ,  02, "" ); 
                                                                          
INSERT INTO ItemTypes VALUES ( 0x1000000000000000, "Unused13"     ,  02, "" ); 
INSERT INTO ItemTypes VALUES ( 0x2000000000000000, "Unused14"     ,  02, "" ); 
INSERT INTO ItemTypes VALUES ( 0x4000000000000000, "Unused15"     ,  02, "" ); 
                                                                          
INSERT INTO ItemTypes VALUES ( 0x4FFFFFFFFFFFFFFF, "Any"          ,  02, "Any/all item types." ); 

--INSERT INTO ItemTypes VALUES ( "NegativeDoNotUse", 0x8000000000000000, 00 ); 64 *** negative value in SQLite; Dapper will not convert to ulong
END;
COMMIT;

-- Use this printf to display hex values...
SELECT Name, printf('%016X', Value) AS Value, IconIdx, Description FROM ItemTypes;
select * from itemtypes;
