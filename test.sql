---====================================
-- Flyway Dry Run (2019-08-13 06:12:54)
---====================================

SET ROLE 'postgres';
SET ROLE 'postgres';
SET ROLE 'postgres';
SELECT set_config('search_path', ?, false);

-- Executing: validate (with callbacks)
------------------------------------------------------------------------------------------
SET ROLE 'postgres';
SELECT set_config('search_path', ?, false);

-- Executing: migrate (with callbacks)
------------------------------------------------------------------------------------------
SET ROLE 'postgres';
SELECT set_config('search_path', ?, false);

-- Executing: migrate -> v2.0 (with callbacks)
------------------------------------------------------------------------------------------

-- Source: .\sql\V2.0__Create_Inventory_Tables.sql
--------------------------------------------------
CREATE TABLE Inventory (InventoryID INT GENERATED BY DEFAULT AS IDENTITY,
                            InventoryItemID INT NOT NULL,
                            CONSTRAINT InventoryPK
                                PRIMARY KEY (InventoryID));
CREATE TABLE InventoryItem (InventoryItemID INT GENERATED BY DEFAULT AS IDENTITY,
                                InventoryItemName VARCHAR(200),
                                CONSTRAINT InventoryItemPK
                                    PRIMARY KEY (InventoryItemID));
ALTER TABLE public.Inventory
ADD CONSTRAINT InventoryItemInventory
    FOREIGN KEY (InventoryItemID)
    REFERENCES public.InventoryItem (InventoryItemID);
INSERT INTO "public"."flyway_schema_history" ("installed_rank","version","description","type","script","checksum","installed_by","execution_time","success") VALUES (3, '2.0', 'Create Inventory Tables', 'SQL', 'V2.0__Create_Inventory_Tables.sql', -2094637995, 'postgres', 34, TRUE);
SET ROLE 'postgres';
SELECT set_config('search_path', ?, false);