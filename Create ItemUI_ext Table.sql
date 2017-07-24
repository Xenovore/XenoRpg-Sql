---------------------------------------------------------------
-- ITEMS UI EXTENSION TABLE
-- • All items' UI info, e.g. stuff that only applies in engine
---------------------------------------------------------------
DROP TABLE IF EXISTS ItemUI_ext;

CREATE TABLE IF NOT EXISTS ItemsUI_ext
(
    ItemId       INTEGER PRIMARY KEY,
    IconIndex    INTEGER DEFAULT 0,
	--TODO: SET FILE DEFAULTS...
	IconFile     VARCHAR(255) DEFAULT "", -- Icon atlas file; probably just one file, but just in case
	ModelFile    VARCHAR(255) DEFAULT "", -- 3D model for item
    SizeW        INTEGER DEFAULT 1,
    SizeH        INTEGER DEFAULT 1,
	Scale        REAL    DEFAULT 1.0, -- Would primarily apply to 3D model
    PosX         REAL    DEFAULT 0.0,
    PosY         REAL    DEFAULT 0.0,
    PosZ         REAL    DEFAULT 0.0  -- depth in 2D UI, world position in 3D
    Location     INTEGER DEFAULT 0, -- 0 = character, 1 = world
	-- TODO: DROP AND PICKUP SOUNDS?
);

