.PHONY: run test

all: run

run:
	npm start

test:
	npm test

database-configuration: ./knexfile.js
./knexfile.js:
	npx knex init

MIGRATION_NAME=?default_migration_name
create-database-migration:
	npx knex migrate:make ${MIGRATION_NAME}

apply-all-database-migration:
	npx knex migrate:latest
	 
initialize-test-framework: ./jest.config.js
./jest.config.js:
	npx jest --init
