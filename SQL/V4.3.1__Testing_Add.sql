create or replace
function public.add_test ()
returns table(radio_id int,
radio_name varchar(100))
language plpgsql
as $$
begin
    select
	*
from
	radio.radios;
end;

$$;