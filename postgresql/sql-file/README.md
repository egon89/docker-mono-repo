# PostgreSQL

## Dump database using docker
Create and set up the .env file:
```bash
cp .env.example .env
```

### Run
```bash
docker-compose run --rm pgdump
```

Into the `pgdump` container, you can run the following command to dump the database:
```bash
# data-only dump excluding migrations table
pg_dump --data-only --encoding=UTF8 --exclude-table='*migrations*' -F p -f /output/db.sql

# full dump
pg_dump --encoding=UTF8 -F p -f /output/db-full.sql
```

## Restore database using docker
In the desired project root, run 'docker-compose ps' to check if the database is running and get the container name.
Then run the following command to restore the database:
- you can use the absolute path to the SQL file
```bash
cat /path/docker-mono-repo/postgresql/sql-file/output/db.sql | docker exec -i container_database psql -U postgres -d database_name
```
