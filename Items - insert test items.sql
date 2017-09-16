--------------------------------------------------------------
-- INSERT TEST ITEMS
--------------------------------------------------------------
BEGIN;
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
    0x0000004000000000, -- paper
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
    0x0000001000000002, -- liquid container
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
    0x0000001000000002, -- liquid container
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
    0x0000001000000002, -- liquid container
    2,
    2,
    1
);
END;
COMMIT;


-- TEST CONTAINER INFO
--INSERT INTO ItemContainers_ext ( ItemId ) VALUES ( 1 ); -- Fiery box
--INSERT INTO ItemContainers_ext ( ItemId ) VALUES ( 2 ); -- small pouch
--INSERT INTO ItemContainers_ext ( ItemId ) VALUES ( 3 ); -- plastic sack


-- WITH THE LEFT JOIN AND THE NULL CHECK ON ItemContainers_ext.ItemId, this will return all
-- rows that are not containers; i.e. ItemContainers_ext has no matching records
SELECT
    Id,
    Items.Name,
    Items.Description,
    Items.Type,
    ItemTypes.Name AS TypeName,
    Items.Weight,
    Items.IsEnabled,
    Items.Quantity,
    Items.QuantityCap,
    Items.Location,
    Items.IconIndex,
    Items.SizeW,
    Items.SizeH,
    Items.PosX,
    Items.PosY,
    Items.PosZ,
    ItemContainers_ext.*
FROM items
LEFT JOIN ItemContainers_ext ON ItemContainers_ext.ItemId = items.Id
JOIN ItemTypes ON ItemTypes.Value = Items.Type
WHERE ItemContainers_ext.itemId IS NULL;

select * from items;
