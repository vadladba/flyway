-- Script generated by Redgate Compare v1.8.1.8422

SET check_function_bodies = false;


DO language plpgsql $$BEGIN RAISE NOTICE 'Creating carrier.raise_warning()...';END$$;
CREATE PROCEDURE carrier.raise_warning()
LANGUAGE plpgsql
AS $_$
DECLARE
warn INT := 10;
BEGIN
RAISE NOTICE 'value of warn : % at %: ', warn, now();
warn := warn + 10;
RAISE WARNING 'value of warn : % at %: ', warn, now();
warn := warn + 10;
RAISE INFO 'value of warn : % at %: ', warn, now();
END;
$_$;
SET check_function_bodies = true;
