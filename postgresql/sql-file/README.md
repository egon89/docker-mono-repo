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
pg_dump --data-only --encoding=UTF8 --exclude-table='*migrations*' -F p -f /output/db.sql
```
