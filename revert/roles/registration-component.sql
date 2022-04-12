-- Revert database-registration-service:roles/registration-component from pg

BEGIN;

DROP ROLE registration_component;

COMMIT;
