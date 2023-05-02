CREATE OR REPLACE PROCEDURE public.SalesInfoTest ()
LANGUAGE plpgsql
AS $$
BEGIN
SELECT *
FROM public.Sales AS s;
END;
$$;