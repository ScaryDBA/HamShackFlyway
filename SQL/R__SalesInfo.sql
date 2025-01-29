CREATE OR REPLACE FUNCTION public.salesinfo ()
returns table (
    "SalesID" integer,
    "ProductID" integer,
    "CustomerID" integer,
    "StoreID" integer,
    "Date" date,
    "Quantity" integer,
    "Price" numeric,
    "Cost" numeric,
    "Total" numeric
)
LANGUAGE plpgsql
AS $$
BEGIN
SELECT *
FROM public.sales AS s;
END;
$$;