--------------------------------------------------------------
-- INSERT TEST ITEMS
--------------------------------------------------------------
INSERT INTO Items
(
    Name,
    Description,
    Type,
    SizeW,
    SizeH
)
VALUES
(
    "Fiery Bleeding Box",
    "Dangerously sharp and exothermic",
    0x01, -- endo container
    2,
    2
);

INSERT INTO Items
(
    Name,
    Description,
    Type,
    SizeW,
    SizeH
)
VALUES
(
    "Small Pouch",
    "Large enough to hold a few coins or gems",
    0x01, -- container
    1,
    1
);

INSERT INTO Items
(
    Name,
    Description,
    Type,
    SizeW,
    SizeH
)
VALUES
(
    "Plastic Sack",
    "Flimsy; the sort you would get at the grocery store.",
    0x01, -- container
    2,
    2
);

INSERT INTO Items
(
    Name,
    Description,
    Type,
    SizeW,
    SizeH,
    Quantity
)
VALUES
(
    "Gold Coin",
    "Gold coin; worth 10 silver coins.",
    0x0000000100000000, -- coin
    1,
    1,
    7
);

INSERT INTO Items
(
    Name,
    Description,
    Type,
    SizeW,
    SizeH
)
VALUES
(
    "Rusty Sword",
    "This sword sucks.",
    0x01000000, -- weapon, bladed
    1,
    4
);

INSERT INTO Items
(
    Name,
    Description,
    Type,
    SizeW,
    SizeH
)
VALUES
(
    "Nightshade",
    "Spell component",
    0x0000000400000000, -- herb
    1,
    1
);

INSERT INTO Items
(
    Name,
    Description,
    Type,
    SizeW,
    SizeH
)
VALUES
(
    "Sulfurous Ass",
    "Spell component",
    0x0000000400000000, -- herb
    1,
    1
);

INSERT INTO Items
(
    Name,
    Description,
    Type,
    SizeW,
    SizeH
)
VALUES
(
    "Spider Silk",
    "Spell component",
    0x0000000400000000, -- herb
    1,
    1
);

INSERT INTO Items
(
    Name,
    Description,
    Type,
    SizeW,
    SizeH
)
VALUES
(
    "Scroll",
    "Scroll of scrollness",
    0xFFFFFFFFFFFFFFFF, -- any
    1,
    2
);

INSERT INTO Items
(
    Name,
    Description,
    Type,
    SizeW,
    SizeH,
    Quantity
)
VALUES
(
    "Small Health Potion",
    "Heals up to 30 hp.",
    0x09, -- liquid container
    1,
    2,
    3
);

INSERT INTO Items
(
    Name,
    Description,
    Type,
    SizeW,
    SizeH,
    Quantity
)
VALUES
(
    "Medium Health Potion",
    "Heals up to 100 hp.",
    0x09, -- liquid container
    2,
    2,
    5
);

INSERT INTO Items
(
    Name,
    Description,
    Type,
    SizeW,
    SizeH,
    Quantity
)
VALUES
(
    "Empty Bottle",
    "Bone dry",
    0x09, -- liquid container
    2,
    2,
    1
);


-- TEST CONTAINER INFO
INSERT INTO ItemContainers_ext ( ItemId ) VALUES ( 1 ); -- Fiery box
INSERT INTO ItemContainers_ext ( ItemId ) VALUES ( 2 ); -- small pouch
INSERT INTO ItemContainers_ext ( ItemId ) VALUES ( 3 ); -- plastic sack

-- TEST CONTAINER ITEMS MAP
INSERT INTO ContainerItems_map ( Id, ItemId ) VALUES ( 1, 5 );
INSERT INTO ContainerItems_map ( Id, ItemId ) VALUES ( 1, 6 );
INSERT INTO ContainerItems_map ( Id, ItemId ) VALUES ( 1, 7 );
INSERT INTO ContainerItems_map ( Id, ItemId ) VALUES ( 1, 8 );
INSERT INTO ContainerItems_map ( Id, ItemId ) VALUES ( 1, 9 );
INSERT INTO ContainerItems_map ( Id, ItemId ) VALUES ( 2, 4 );
INSERT INTO ContainerItems_map ( Id, ItemId ) VALUES ( 2, 14 );
INSERT INTO ContainerItems_map ( Id, ItemId ) VALUES ( 2, 15 );
INSERT INTO ContainerItems_map ( Id, ItemId ) VALUES ( 2, 10 );
INSERT INTO ContainerItems_map ( Id, ItemId ) VALUES ( 2, 11 );
INSERT INTO ContainerItems_map ( Id, ItemId ) VALUES ( 2, 12 );
INSERT INTO ContainerItems_map ( Id, ItemId ) VALUES ( 3, 2 );
INSERT INTO ContainerItems_map ( Id, ItemId ) VALUES ( 3, 1 );
INSERT INTO ContainerItems_map ( Id, ItemId ) VALUES ( 3, 13 );

