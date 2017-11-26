-- ContainerStyles
-- • These are visual styles: what UI background to use when the container is opened, what 3D model to use(?)

BEGIN;
INSERT INTO ContainerStyles (Name) VALUES( "Chest" );
INSERT INTO ContainerStyles (Name) VALUES( "Crate" );
INSERT INTO ContainerStyles (Name) VALUES( "Barrel" );
INSERT INTO ContainerStyles (Name) VALUES( "Backpack" );
INSERT INTO ContainerStyles (Name) VALUES( "Pouch" );
INSERT INTO ContainerStyles (Name) VALUES( "Sack" );
INSERT INTO ContainerStyles (Name) VALUES( "Box" ); -- Like UO's little box
END;
COMMIT;

select * from ContainerStyles;