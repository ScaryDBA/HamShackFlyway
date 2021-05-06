--postgresql setup
--CREATE DATABASE hamshackradio



-- initial set of tables and procedures
CREATE TABLE Sales (SalesID INT PRIMARY KEY NOT NULL,
                        SalesDate TIMESTAMP);


CREATE OR REPLACE PROCEDURE public.SalesInfo ()
LANGUAGE plpgsql
AS $$
BEGIN
SELECT *
FROM public.Sales AS s;
END;
$$;


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


CREATE TABLE Users (UserID INT GENERATED BY DEFAULT AS IDENTITY,
                        FirstName VARCHAR(150) NOT NULL,
                        LastName VARCHAR(150) NOT NULL,
                        CONSTRAINT UsersPK
                            PRIMARY KEY (UserID));

CREATE OR REPLACE PROCEDURE InventoryInfo()
LANGUAGE plpgsql
AS $$
BEGIN
SELECT i.InventoryID,
       i.InventoryItemID,
       ii.InventoryItemID,
       ii.InventoryItemName
FROM dbo.Inventory AS i
    JOIN dbo.InventoryItem AS ii
        ON ii.InventoryItemID = i.InventoryItemID;
END;
$$



