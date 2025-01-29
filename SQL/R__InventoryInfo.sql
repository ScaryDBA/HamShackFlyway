CREATE OR REPLACE FUNCTION public.inventoryinfo()
returns table (
    inventory_item_id integer,
    inventory_item_name character varying,
    inventory_item_description character varying,
    inventory_item_price numeric,
    inventory_item_quantity integer,
    inventory_item_category character varying,
    inventory_item_image character varying,
    inventory_item_status character varying,
    inventory_item_date_added date,
    inventory_item_date_modified date,
    inventory_item_date_recorded date,
    inventory_item_recorded_by character varying,
    inventory_item_modified_by character varying,
    inventory_item_added_by character varying,
    inventory_item_deleted_by character varying,
    inventory_item_deleted boolean,
    inventory_id integer,
    inventory_name character varying,
    inventory_description character varying,
    inventory_date_added date,
    inventory_date_modified date,
    inventory_date_recorded date,
    inventory_recorded_by character varying,
    inventory_modified_by character varying,
    inventory_added_by character varying,
    inventory_deleted_by character varying,
    inventory_deleted boolean
)
LANGUAGE plpgsql
AS $$
BEGIN
SELECT *
FROM public.inventory AS i
JOIN public.inventory_item as ii
ON i.inventory_item_id = ii.inventorytem_id;
END;
$$