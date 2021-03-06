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