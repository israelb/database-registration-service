-- Deploy database-registration-service:roles/registration-component to pg

BEGIN;

CREATE ROLE registration_component LOGIN INHERIT;

GRANT message_store_reader TO registration_component;
GRANT message_store_writer TO registration_component;

ALTER ROLE registration_component SET search_path = message_store, public;

COMMIT;
