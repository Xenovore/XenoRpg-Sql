-------------------------------------------------------------
-- BUILD CHARACTER BODY CONTAINER TEMPLATE
-- • When creating new character, read these, then save as new tree
-------------------------------------------------------------

/*
DELETE FROM ItemContainers_ext;
DELETE FROM Items;
DELETE FROM ContainerItems_map;
*/

/* trigger example: THIS WON'T WORK; ROW MUST EXIST IN ITEMS FIRST DUE TO FOREIGN KEY CONSTRAINT
CREATE TRIGGER insert_container_item AFTER INSERT ON ItemContainers_ext
BEGIN
  INSERT INTO Items( Name, Type )  
END;
*/
select * from items;
select * from ItemContainers_ext;
select * from ContainerItems_map;

-- NOTE: Pending transactions must be committed before starting a new one!
BEGIN;

-- BODY (ROOT)
INSERT INTO Items              ( Id, Name, Type )               VALUES (  1, "_BODY", 0x00000001 ); -- Container
INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed, Locked )  VALUES (  last_insert_rowid(), 0x00000002, 1 ); -- Slot
INSERT INTO ContainerItems_map ( Id, ItemId )                   VALUES (  0, last_insert_rowid() );-- NO PARENT CONTAINER ON ROOT
    -- ***** INSERT MAIN BODY LOCATIONS FIRST
    -- HELD, LEFT
    INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES (  2, "_HELD_L", 0x00000001, 2, 4 );
    INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed )          VALUES (  last_insert_rowid(), 0xFFFFFFFF );
    INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES (  1,  last_insert_rowid() );

    -- HELD, RIGHT
    INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES (  3, "_HELD_R", 0x00000001, 2, 4 );
    INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed )          VALUES (  last_insert_rowid(), 0xFFFFFFFF );
    INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES (  1,  last_insert_rowid() );

    -- HEAD
    INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES (  4, "_HEAD", 0x00000001, 2, 2 );
    INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed, Locked )  VALUES (  last_insert_rowid(), 0x00000002, 1 ); -- Slot
    INSERT INTO ContainerItems_map ( Id, ItemId )                   VALUES (  1,  last_insert_rowid() );

     -- NECK
    INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES (  5, "_NECK", 0x00000001, 2, 2 );
    INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed, Locked )  VALUES (  last_insert_rowid(), 0x00000002, 1 );
    INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES (  1,  last_insert_rowid() );

    -- SHOULDERS
    INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES (  6, "_SHOULDERS", 0x00000001, 2, 2 );
    INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed, Locked )  VALUES (  last_insert_rowid(), 0x00000002, 1 );
    INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES (  1,  last_insert_rowid() );

    -- ARM, LEFT
    INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES (  7, "_ARM_L", 0x00000001, 2, 2 );
    INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed, Locked )  VALUES (  last_insert_rowid(), 0x00000002, 1 );
    INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES (  1,  last_insert_rowid() );

     -- ARM, RIGHT
    INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES (  8, "_ARM_R", 0x00000001, 2, 2 );
    INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed, Locked )  VALUES (  last_insert_rowid(), 0x00000002, 1 );
    INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES (  1,  last_insert_rowid() );

    -- TORSO
    INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES (  9, "_TORSO", 0x00000001, 2, 3 );
    INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed, Locked )  VALUES (  9, 0x00000002, 1 );
    INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES (  1,  9 );

    -- WAIST
    INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES ( 10, "_WAIST", 0x00000001, 2, 1 );
    INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed, Locked )  VALUES ( last_insert_rowid(), 0x00000002, 1 );
    INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES (  1, last_insert_rowid() );

    -- LEGS
    INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES ( 11, "_LEGS", 0x00000001, 2, 3 );
    INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed, Locked)   VALUES ( last_insert_rowid(), 0x00000002, 1 );
    INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES (  1, last_insert_rowid() );

    -- FEET
    INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES ( 12, "_FEET", 0x00000001, 2, 3 );
    INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed, Locked )  VALUES ( last_insert_rowid(), 0x00000002, 1 );
    INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES (  1, last_insert_rowid() );


    -- ***** HEAD SLOTS
    -- HEAD, CLOTH
    INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES ( 13, "_HEAD_CLOTH", 0x00000002, 2, 2 );
    INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed )          VALUES ( last_insert_rowid(),  0x00010010 ); -- Cloth, Head
    INSERT INTO ContainerItems_map ( Id, ItemId )                   VALUES (  4, last_insert_rowid() );

    -- HEAD, ARMOR
    INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES ( 14, "_HEAD_ARMOR", 0x00000002, 2, 2 );
    INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed )          VALUES ( last_insert_rowid(),  0x000E0010 ); -- Leather/Chain/Plate, Head
    INSERT INTO ContainerItems_map ( Id, ItemId )                   VALUES (  4, last_insert_rowid() );

    -- EAR, LEFT
    INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES ( 15, "_EAR_L", 0x00000002, 2, 2 );
    INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed )          VALUES ( last_insert_rowid(),  0x00100020 ); -- Jewelry, Ear
    INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES (  4, last_insert_rowid() );

    -- EAR, RIGHT
    INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES ( 16, "_EAR_R", 0x00000002, 2, 2 );
    INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed )          VALUES ( last_insert_rowid(), 0x00100020 ); -- Jewelry, Ear
    INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES (  4, last_insert_rowid() );

    -- FACE
    INSERT INTO Items              ( Id, Name, Type )               VALUES ( 17, "_FACE", 0x00000002 );
    INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed )          VALUES ( last_insert_rowid(), 0x00F00040 );
    INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES (  4, last_insert_rowid() );


    -- ***** NECK SLOTS
    -- NECK, CLOTH
    INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES ( 18, "_NECK_CLOTH", 0x00000002, 2, 2 );
    INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed )          VALUES ( last_insert_rowid(), 0x00010080 );
    INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES (  5, last_insert_rowid() );

    -- NECK, ARMOR
    INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES ( 19, "_NECK_ARMOR", 0x00000002, 2, 2 );
    INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed )          VALUES ( last_insert_rowid(), 0x000E0080 );
    INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES (  5, last_insert_rowid() );


    -- ***** SHOULDER SLOTS
    -- SHOULDERS, CLOTH (CLOAK)
    INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES ( 20, "_SHLDR_CLOTH", 0x00000002, 2, 4 );
    INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed )          VALUES ( last_insert_rowid(), 0x00010100 );
    INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES (  6, last_insert_rowid() );

    -- SHOULDERS, ARMOR
    INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES ( 21, "_SHLDR_ARMOR", 0x00000002, 2, 2 );
    INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed )          VALUES ( last_insert_rowid(), 0x000E0100 );
    INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES (  6, last_insert_rowid() );


    -- ***** LEFT ARM
    -- ARM_LEFT, ARMOR
    INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES ( 22, "_ARM_L_ARMOR", 0x00000002, 2, 2 );
    INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed )          VALUES ( last_insert_rowid(), 0x000E0400 );
    INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES (  7, last_insert_rowid() );

    -- WRIST_LEFT, ARMOR/BRACELET
    INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES ( 23, "_WRIST_L_ARMOR", 0x00000002, 1, 2 );
    INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed )          VALUES ( last_insert_rowid(), 0x00040800 | 0x00020800 );
    INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES (  7, last_insert_rowid() );

    -- HAND, LEFT (Since hand parents to arm, still need locked slot here to parent multiple child slots to)
    INSERT INTO Items              ( Id, Name, Type )               VALUES ( 24, "_HAND_L", 0x00000001 );
    INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed, Locked )  VALUES ( last_insert_rowid(), 0x00000002, 1 );
    INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES (  7, last_insert_rowid() );

        -- HAND_LEFT, ARMOR/CLOTH
        INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES ( 25, "_HAND_L_ARMOR", 0x00000002, 2, 2 );
        INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed )          VALUES ( last_insert_rowid(), 0x000F1000 );
        INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES ( 24, last_insert_rowid() );

        -- FINGER_LEFT, ACCESSORY1
        INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES ( 26, "_FINGER_L_ACC1", 0x00000002, 1, 1 );
        INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed )          VALUES ( last_insert_rowid(), 0x00041000 );
        INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES ( 24, last_insert_rowid() );

        -- FINGER_LEFT, ACCESSORY2
        INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES ( 27, "_FINGER_L_ACC2", 0x00000002, 1, 1 );
        INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed )          VALUES ( last_insert_rowid(), 0x00041000 );
        INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES ( 24, last_insert_rowid() );

        
    -- ***** RIGHT ARM
    -- ARM_RIGHT, ARMOR
    INSERT INTO Items              ( Id, Name, Type )               VALUES ( 28, "_ARM_R_ARMOR", 0x00000002 );
    INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed )          VALUES ( last_insert_rowid(), 0x000E0400 );
    INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES (  8, last_insert_rowid() );

    -- WRIST_RIGHT, ARMOR/BRACELET
    INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES ( 29, "_WRIST_R_ARMOR", 0x00000002, 1, 2 );
    INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed )          VALUES ( last_insert_rowid(), 0x00040800 | 0x00020800 );
    INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES (  8, last_insert_rowid() );

    -- HAND, RIGHT (Since hand parents to arm, still need locked slot here to parent multiple child slots to)
    INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES ( 30, "_HAND_R", 0x00000001, 0, 0 );
    INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed, Locked )  VALUES ( last_insert_rowid(), 0x00000002, 1 );
    INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES (  8, last_insert_rowid() );

        -- HAND_RIGHT, ARMOR/CLOTH
        INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES ( 31, "_HAND_R_ARMOR", 0x00000002, 2, 2 );
        INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed )          VALUES ( last_insert_rowid(), 0x000F1000 );
        INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES ( 30, last_insert_rowid() );

        -- FINGER_RIGHT, ACCESSORY1
        INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES ( 32, "_FINGER_R_ACC1", 0x00000002, 1, 1 );
        INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed )          VALUES ( last_insert_rowid(), 0x00041000 );
        INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES ( 30, last_insert_rowid() );

        -- FINGER_RIGHT, ACCESSORY2
        INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES ( 33, "_FINGER_R_ACC2", 0x00000002, 1, 1 );
        INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed )          VALUES ( last_insert_rowid(), 0x00041000 );
        INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES ( 30, last_insert_rowid() );


    -- ***** TORSO
    -- TORSO, Armor
    INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES ( 34, "_TORSO_ARMOR", 0x00000002, 2, 3 );
    INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed )          VALUES ( last_insert_rowid(), 0x000F0200 );
    INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES (  9, last_insert_rowid() );

    -- TORSO, Cloth (Shirt)
    INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES ( 35, "_TORSO_CLOTH", 0x00000002, 2, 3 );
    INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed )          VALUES ( last_insert_rowid(), 0x00010200 );
    INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES (  9, last_insert_rowid() );

    -- TORSO, Cloth (Robe) 
    INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES ( 36, "_TORSO_CLOTH2", 0x00000002, 2, 3 );
    INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed )          VALUES ( last_insert_rowid(), 0x00010200 );
    INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES (  9, last_insert_rowid() );

    -- TORSO, Cloth (Tabard)
    INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES ( 37, "_TORSO_CLOTH3", 0x00000002, 2, 3 );
    INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed )          VALUES ( last_insert_rowid(), 0x00010200 );
    INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES (  9, last_insert_rowid() );

    -- BACK (parented to TORSO for now)
    INSERT INTO Items              ( Id, Name, Type )               VALUES ( 38, "_BACK", 0x00000001 );
    INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed, Locked )  VALUES ( last_insert_rowid(), 0x00000002, 1 );
    INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES ( 9, last_insert_rowid() );

        -- BACK, Slot 1 (Pack, Quiver, 2-H Sheath, Bow)
        INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES ( 39, "_BACK_SLOT1", 0x00000002, 2, 3 );
        INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed )          VALUES ( last_insert_rowid(), 0x00000007 );
        INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES ( 38, last_insert_rowid() );

        -- BACK, Slot 2
        INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES ( 40, "_BACK_SLOT2", 0x00000002, 2, 3 );
        INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed )          VALUES ( last_insert_rowid(), 0x00000007 );
        INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES ( 38, last_insert_rowid() );

        -- BACK, Slot 3
        INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES ( 41, "_BACK_SLOT3", 0x00000002, 2, 3 );
        INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed )          VALUES ( last_insert_rowid(), 0x00000007 );
        INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES ( 38, last_insert_rowid() );

        
    -- ***** WAIST
    -- WAIST, BELT
    INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES ( 42, "_WAIST_BELT", 0x00000002, 2, 1 );
    INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed )          VALUES ( last_insert_rowid(), 0x000F4000 );
    INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES ( 10, last_insert_rowid() );

    
    -- ***** LEGS
    -- LEGS, ARMOR
    INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES ( 43, "_LEGS_ARMOR", 0x00000002, 2, 3 );
    INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed )          VALUES ( last_insert_rowid(), 0x00024000 );
    INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES ( 11, last_insert_rowid() );

    -- LEGS, CLOTH
    INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES ( 44, "_LEGS_CLOTH", 0x00000002, 2, 3 );
    INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed )          VALUES ( last_insert_rowid(), 0x00014000 );
    INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES ( 11, last_insert_rowid() );
    
    -- ***** FEET
    -- FEET, SHOES/ARMOR
    INSERT INTO Items                  ( Id, Name, Type, SizeW, SizeH ) VALUES ( 45, "_FEET_ARMOR", 0x00000002, 2, 3 );
    INSERT INTO ItemContainers_ext     ( ItemId, TypeAllowed )          VALUES ( last_insert_rowid(), 0x00028000 );
    INSERT INTO ContainerItems_map     ( Id, ItemId  )                  VALUES ( 12, last_insert_rowid() );

    -- ANKLE JEWELRY WOULD PARENT TO FEET
COMMIT;

----------------------------------------------------------------------
-- STEPS TO GET CHAR. INVENTORY
-- 1) Fetch Body Container ID by char. ID

--@BodyContId = 
SELECT ContBodyId FROM Characters WHERE Id = 1;

-- 2) Recurse into child containers and grab items
SELECT ContMap.* FROM ContainerItems_map AS ContMap
WHERE ContMap.Id = 4; --@BodyContId


SELECT
    ItemTypes.Name AS 'Type Name',
    ContMap.Id AS ContId,
    Items.*,
    ItemContainers_ext.*
    
FROM ContainerItems_map AS ContMap
LEFT JOIN Items ON Items.Id = ContMap.ItemId
JOIN ItemTypes ON ItemTypes.Value = Items.Type
JOIN ItemContainers_ext ON ItemContainers_ext.ItemId = ContMap.ItemId;
