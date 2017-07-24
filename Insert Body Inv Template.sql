-------------------------------------------------------------
-- BUILD CHARACTER BODY CONTAINER TEMPLATE
-- • When creating new character, read this, then save as new tree
-------------------------------------------------------------

/*
DELETE FROM Items;
DELETE FROM ItemContainers_ext;
DELETE FROM ContainerItems_map;
*/

/* trigger example
CREATE TRIGGER insert_container_item AFTER INSERT ON ItemContainers_ext
BEGIN
  INSERT INTO Items( Name, Type )  
END;
*/

--BEGIN;

-- BODY (ROOT)
INSERT INTO Items              ( Id, Name, Type )               VALUES (  1, "_BODY", 0x00000001 ); -- Container
INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed, Locked )  VALUES (  1, 0x00000002, 1 ); -- Slot
INSERT INTO ContainerItems_map ( Id, ItemId )                   VALUES (  0, 1 );-- NO PARENT CONTAINER ON ROOT

    -- ***** INSERT MAIN BODY LOCATIONS FIRST
    -- HELD, LEFT
    INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES (  2, "_HELD_L", 0x00000001, 2, 4 );
    INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed )          VALUES (  2, 0xFFFFFFFF );
    INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES (  1,  2 );

    -- HELD, RIGHT
    INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES (  3, "_HELD_R", 0x00000001, 2, 4 );
    INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed )          VALUES (  3, 0xFFFFFFFF );
    INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES (  1,  3 );

    -- HEAD
    INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES (  4, "_HEAD", 0x00000001, 2, 2 );
    INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed, Locked )  VALUES (  4, 0x00000002, 1 ); -- Slot
    INSERT INTO ContainerItems_map ( Id, ItemId )                   VALUES (  1,  4 );

     -- NECK
    INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES (  5, "_NECK", 0x00000001, 2, 2 );
    INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed, Locked )  VALUES (  5, 0x00000002, 1 );
    INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES (  1,  5 );

    -- SHOULDERS
    INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES (  6, "_SHOULDERS", 0x00000001, 2, 2 );
    INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed, Locked )  VALUES (  6, 0x00000002, 1 );
    INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES (  1,  6 );

    -- ARM, LEFT
    INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES (  7, "_ARM_L", 0x00000001, 2, 2 );
    INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed, Locked )  VALUES (  7, 0x00000002, 1 );
    INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES (  1,  7 );

     -- ARM, RIGHT
    INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES (  8, "_ARM_R", 0x00000001, 2, 2 );
    INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed, Locked )  VALUES (  8, 0x00000002, 1 );
    INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES (  1,  8 );

    -- TORSO
    INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES (  9, "_TORSO", 0x00000001, 2, 3 );
    INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed, Locked )  VALUES (  9, 0x00000002, 1 );
    INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES (  1,  9 );

    -- WAIST
    INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES ( 10, "_WAIST", 0x00000001, 2, 1 );
    INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed, Locked )  VALUES ( 10, 0x00000002, 1 );
    INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES (  1, 10 );

    -- LEGS
    INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES ( 11, "_LEGS", 0x00000001, 2, 3 );
    INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed, Locked)   VALUES ( 11, 0x00000002, 1 );
    INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES (  1, 11 );

    -- FEET
    INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES ( 12, "_FEET", 0x00000001, 2, 3 );
    INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed, Locked )  VALUES ( 12, 0x00000002, 1 );
    INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES (  1, 12 );


    -- ***** HEAD SLOTS
    -- HEAD, CLOTH
    INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES ( 13, "_HEAD_CLOTH", 0x00000002, 2, 2 );
    INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed )          VALUES ( 13,  0x00010010 ); -- Cloth, Head
    INSERT INTO ContainerItems_map ( Id, ItemId )                   VALUES (  4, 13 );

    -- HEAD, ARMOR
    INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES ( 14, "_HEAD_ARMOR", 0x00000002, 2, 2 );
    INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed )          VALUES ( 14,  0x000E0010 ); -- Leather/Chain/Plate, Head
    INSERT INTO ContainerItems_map ( Id, ItemId )                   VALUES (  4, 14 );

    -- EAR, LEFT
    INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES ( 15, "_EAR_L", 0x00000002, 2, 2 );
    INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed )          VALUES ( 15,  0x00100020 ); -- Jewelry, Ear
    INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES (  4, 15 );

    -- EAR, RIGHT
    INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES ( 16, "_EAR_R", 0x00000002, 2, 2 );
    INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed )          VALUES ( 16, 0x00100020 ); -- Jewelry, Ear
    INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES (  4, 16 );

    -- FACE
    INSERT INTO Items              ( Id, Name, Type )               VALUES ( 17, "_FACE", 0x00000002 );
    INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed )          VALUES ( 17, 0x00F00040 );
    INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES (  4, 17 );


    -- ***** NECK SLOTS
    -- NECK, CLOTH
    INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES ( 18, "_NECK_CLOTH", 0x00000002, 2, 2 );
    INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed )          VALUES ( 18, 0x00010080 );
    INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES (  5, 18 );

    -- NECK, ARMOR
    INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES ( 19, "_NECK_ARMOR", 0x00000002, 2, 2 );
    INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed )          VALUES ( 19, 0x000E0080 );
    INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES (  5, 19 );


    -- ***** SHOULDER SLOTS
    -- SHOULDERS, CLOTH (CLOAK)
    INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES ( 20, "_SHLDR_CLOTH", 0x00000002, 2, 4 );
    INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed )          VALUES ( 20, 0x00010100 );
    INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES (  6, 20 );

    -- SHOULDERS, ARMOR
    INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES ( 21, "_SHLDR_ARMOR", 0x00000002, 2, 2 );
    INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed )          VALUES ( 21, 0x000E0100 );
    INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES (  6, 21 );


    -- ***** LEFT ARM
    -- ARM_LEFT, ARMOR
    INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES ( 22, "_ARM_L_ARMOR", 0x00000002, 2, 2 );
    INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed )          VALUES ( 22, 0x000E0400 );
    INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES (  7, 22 );

    -- WRIST_LEFT, ARMOR/BRACELET
    INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES ( 23, "_WRIST_L_ARMOR", 0x00000002, 1, 2 );
    INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed )          VALUES ( 23, 0x00040800 | 0x00020800 );
    INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES (  7, 23 );

    -- HAND, LEFT (Since hand parents to arm, still need locked slot here to parent multiple child slots to)
    INSERT INTO Items              ( Id, Name, Type )               VALUES ( 24, "_HAND_L", 0x00000001 );
    INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed, Locked )  VALUES ( 24, 0x00000002, 1 );
    INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES (  7, 24 );

        -- HAND_LEFT, ARMOR/CLOTH
        INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES ( 25, "_HAND_L_ARMOR", 0x00000002, 2, 2 );
        INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed )          VALUES ( 25, 0x000F1000 );
        INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES ( 24, 25 );

        -- FINGER_LEFT, ACCESSORY1
        INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES ( 26, "_FINGER_L_ACC1", 0x00000002, 1, 1 );
        INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed )          VALUES ( 26, 0x00041000 );
        INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES ( 24, 26 );

        -- FINGER_LEFT, ACCESSORY2
        INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES ( 27, "_FINGER_L_ACC2", 0x00000002, 1, 1 );
        INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed )          VALUES ( 27, 0x00041000 );
        INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES ( 24, 27 );

        
    -- ***** RIGHT ARM
    -- ARM_RIGHT, ARMOR
    INSERT INTO Items              ( Id, Name, Type )               VALUES ( 28, "_ARM_R_ARMOR", 0x00000002 );
    INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed )          VALUES ( 28, 0x000E0400 );
    INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES (  8, 28 );

    -- WRIST_RIGHT, ARMOR/BRACELET
    INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES ( 29, "_WRIST_R_ARMOR", 0x00000002, 1, 2 );
    INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed )          VALUES ( 29, 0x00040800 | 0x00020800 );
    INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES (  8, 29 );

    -- HAND, RIGHT (Since hand parents to arm, still need locked slot here to parent multiple child slots to)
    INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES ( 30, "_HAND_R", 0x00000001, 0, 0 );
    INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed, Locked )  VALUES ( 30, 0x00000002, 1 );
    INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES (  8, 30 );

        -- HAND_RIGHT, ARMOR/CLOTH
        INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES ( 31, "_HAND_R_ARMOR", 0x00000002, 2, 2 );
        INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed )          VALUES ( 31, 0x000F1000 );
        INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES ( 30, 31 );

        -- FINGER_RIGHT, ACCESSORY1
        INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES ( 32, "_FINGER_R_ACC1", 0x00000002, 1, 1 );
        INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed )          VALUES ( 32, 0x00041000 );
        INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES ( 30, 32 );

        -- FINGER_RIGHT, ACCESSORY2
        INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES ( 33, "_FINGER_R_ACC2", 0x00000002, 1, 1 );
        INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed )          VALUES ( 33, 0x00041000 );
        INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES ( 30, 33 );


    -- ***** TORSO
    -- TORSO, Cloth (Shirt)
    INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES ( 34, "_TORSO_CLOTH1", 0x00000002, 2, 3 );
    INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed )          VALUES ( 34, 0x00010200 );
    INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES (  9, 34 );

    -- TORSO, Armor
    INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES ( 35, "_TORSO_ARMOR", 0x00000002, 2, 3 );
    INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed )          VALUES ( 35, 0x000F0200 );
    INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES (  9, 35 );

    -- TORSO, Cloth (Robe) 
    INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES ( 36, "_TORSO_CLOTH2", 0x00000002, 2, 3 );
    INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed )          VALUES ( 36, 0x00010200 );
    INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES (  9, 36 );

    -- TORSO, Cloth (Tabard)
    INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES ( 37, "_TORSO_CLOTH3", 0x00000002, 2, 3 );
    INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed )          VALUES ( 37, 0x00010200 );
    INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES (  9, 37);

    -- BACK (parented to TORSO for now)
    INSERT INTO Items              ( Id, Name, Type )               VALUES ( 38, "_BACK", 0x00000001 );
    INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed, Locked )  VALUES ( 38, 0x00000002, 1 );
    INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES ( 9, 38 );

        -- BACK, Slot 1 (Pack, Quiver, 2-H Sheath, Bow)
        INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES ( 39, "_BACK_SLOT1", 0x00000002, 2, 3 );
        INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed )          VALUES ( 39, 0x00000007 );
        INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES ( 38, 39 );

        -- BACK, Slot 2
        INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES ( 40, "_BACK_SLOT2", 0x00000002, 2, 3 );
        INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed )          VALUES ( 40, 0x00000007 );
        INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES ( 38, 40 );

        -- BACK, Slot 3
        INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES ( 41, "_BACK_SLOT3", 0x00000002, 2, 3 );
        INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed )          VALUES ( 41, 0x00000007 );
        INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES ( 38, 41 );

        
    -- ***** WAIST
    -- WAIST, BELT
    INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES ( 42, "_WAIST_BELT", 0x00000002, 2, 1 );
    INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed )          VALUES ( 42, 0x000F4000 );
    INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES ( 10, 42 );

    
    -- ***** LEGS
    -- LEGS, ARMOR
    INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES ( 43, "_LEGS_ARMOR", 0x00000002, 2, 3 );
    INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed )          VALUES ( 43, 0x00024000 );
    INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES ( 11, 43 );

    -- LEGS, CLOTH
    INSERT INTO Items              ( Id, Name, Type, SizeW, SizeH ) VALUES ( 44, "_LEGS_ARMOR", 0x00000002, 2, 3 );
    INSERT INTO ItemContainers_ext ( ItemId, TypeAllowed )          VALUES ( 44, 0x00014000 );
    INSERT INTO ContainerItems_map ( Id, ItemId  )                  VALUES ( 11, 44 );

    
    -- ***** FEET
    -- FEET, SHOES/ARMOR
    INSERT INTO Items                  ( Id, Name, Type, SizeW, SizeH ) VALUES ( 45, "_FEET_ARMOR", 0x00000002, 2, 3 );
    INSERT INTO ItemContainers_ext     ( ItemId, TypeAllowed )          VALUES ( 45, 0x00028000 );
    INSERT INTO ContainerItems_map     ( Id, ItemId  )                  VALUES ( 12, 45 );

    -- ANKLE JEWELRY WOULD PARENT TO FEET
--COMMIT;

----------------------------------------------------------------------
-- STEPS TO GET CHAR. INVENTORY
-- 1) Fetch Body Container ID by char. ID

--@BodyContId = 
SELECT ContBodyId FROM Characters WHERE Id = 1;

-- 2) Recurse into child containers and grab items
SELECT ContMap.* FROM ContainerItems_map AS ContMap
WHERE ContMap.Id = 4; --@BodyContId


SELECT
    ContMap.Id AS ContId,
    Items.*,
    ItemContainers_ext.*
FROM ContainerItems_map AS ContMap
JOIN Items ON Items.Id = ContMap.ItemId
JOIN ItemContainers_ext ON ItemContainers_ext.ItemId = ContMap.ItemId;
