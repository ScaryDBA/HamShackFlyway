CREATE OR REPLACE FUNCTION public.InventoryInfo()
returns table (
    inventoryitemid integer,
    inventoryitemname character varying,
    inventoryitemdescription character varying,
    inventoryitemprice numeric,
    inventoryitemquantity integer,
    inventoryitemcategory character varying,
    inventoryitemimage character varying,
    inventoryitemstatus character varying,
    inventoryitemdateadded date,
    inventoryitemdatemodified date,
    inventoryitemdaterecorded date,
    inventoryitemrecordedby character varying,
    inventoryitemmodifiedby character varying,
    inventoryitemaddedby character varying,
    inventoryitemdeletedby character varying,
    inventoryitemdeleted boolean,
    inventoryid integer,
    inventoryname character varying,
    inventorydescription character varying,
    inventorydateadded date,
    inventorydatemodified date,
    inventorydaterecorded date,
    inventoryrecordedby character varying,
    inventorymodifiedby character varying,
    inventoryaddedby character varying,
    inventorydeletedby character varying,
    inventorydeleted boolean
)
LANGUAGE plpgsql
AS $$
BEGIN
SELECT *
FROM public.inventory AS i
JOIN public.inventoryitem as ii
ON i.inventoryitemid = ii.inventorytemid;
END;
$$