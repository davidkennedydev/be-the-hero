all: run

run:
	npm start

database-configuration: ./knexfile.js
./knexfile.js:
	npx knex init

MIGRATION_NAME=?default_migration_name
create-database-migration:
	npx knex migration:make ${MIGRATION_NAME}

apply-all-database-migration:
	npx knex migration:latest
