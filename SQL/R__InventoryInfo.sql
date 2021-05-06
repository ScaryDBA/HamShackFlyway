CREATE OR REPLACE PROCEDURE public.InventoryInfo()
LANGUAGE plpgsql
AS $$
BEGIN
SELECT *
FROM public.inventory AS i
JOIN public.inventoryitem as ii
ON i.inventoryitemid = ii.inventorytemid;
END;
$$