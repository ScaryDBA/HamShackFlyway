-- Script generated by Redgate Compare v1.30.3.102
SET check_function_bodies = false;


DO language plpgsql $$BEGIN RAISE NOTICE 'Creating public.transmissiontype...';END$$;
CREATE TYPE public.transmissiontype AS ENUM ('Analog', 'Digital');
ALTER TYPE public.transmissiontype OWNER TO postgres;


DO language plpgsql $$BEGIN RAISE NOTICE 'Creating radio.radios.transmission...';END$$;
ALTER TABLE radio.radios ADD COLUMN transmission public.transmissiontype;

SET check_function_bodies = true;
