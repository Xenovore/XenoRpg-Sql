---------------------------------------------------------------
-- CREATE CONTAINERITEMS_MAP TABLE
---------------------------------------------------------------
DROP TABLE IF EXISTS ContainerItems_map;

CREATE TABLE IF NOT EXISTS ContainerItems_map
(
    Id          INTEGER, -- Id of container item
    ItemId      INTEGER UNIQUE  -- Id of item in container
);

-- TEST DATA; REMOVE
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

-- SHOW ALL CONTAINERS AND ITEMS PER CONTAINER
/*SELECT
    ContItems.Name AS Container,
    ContainerItems_map.*,
    Items.Name AS Item
FROM ContainerItems_map
JOIN Items AS ContItems ON ContItems.Id = ContainerItems_map.Id
LEFT OUTER JOIN Items ON Items.Id = ContainerItems_map.ItemId;
*/
-- RECURSIVELY GET ALL ITEMS IN CONTAINER
-- THIS ONLY WORKS TO GET ALL ITEMS.
-- TO BUILD A TREE IN CODE, STILL NEED TO QUERY EACH CONTAINER INDIVIDUALLY
WITH RECURSIVE cteItemsInContainer( i ) AS
(
    SELECT
        ContainerItems_map.ItemId
    FROM ContainerItems_map
    JOIN Items ON Items.Id = ContainerItems_map.ItemId
    WHERE Items.Type = 0x0001 -- container
    AND ContainerItems_map.Id = 3 -- ID of parent container

    UNION ALL 
        SELECT 
            ItemId AS Id
        FROM ContainerItems_map, cteItemsInContainer
        WHERE ContainerItems_map.Id = cteItemsInContainer.i
)
SELECT * FROM Items where Id in cteItemsInContainer;

-- RECURSIVE QUERY IS COOL, BUT THIS WORKS BETTER FOR
-- TREE-BUILDING IN CODE, RECURSE THERE
SELECT * FROM ContainerItems_map
WHERE ContainerItems_map.Id = 2; -- Parent ID

