WITH RECURSIVE charItems (level, parentContId, itemId) AS
(
    -- First param values (0) are just placeholders...
    -- Params: nested level, item ID, root container ID
    VALUES(0, 0, 1)
    UNION ALL 
    SELECT
        charItems.level + 1 as level,
        contmap.id,
        contmap.itemId
    FROM ContainerItems_map AS contmap, charItems WHERE charItems.itemId = contmap.id
    -- LIMIT is on total results, not nested level
)
SELECT
    charItems.level AS NestLevel,
    charItems.parentContId,
    charItems.itemId,
    Items.*,
    ItemContainers_ext.* FROM charItems
JOIN items ON items.id = charItems.itemId
JOIN ItemContainers_ext ON ItemContainers_ext.ItemId = charItems.itemId
ORDER BY ItemId
/*
select * from ContainerItems_map
*/