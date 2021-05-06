CREATE OR REPLACE PROCEDURE public.SalesInfo ()
LANGUAGE plpgsql
AS $$
BEGIN
SELECT *
FROM public.Sales AS s;
END;
$$;