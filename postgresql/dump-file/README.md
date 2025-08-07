# PostgreSQL

## Dump database using docker
Create and set up the .env file:
```bash
cp .env.example .env
```

### Run
```bash
docker-compose up > mydb_data_only.dump
```

## Minimun schema for dump
```yaml
services:
  pgdump:
    image: postgres:15
    entrypoint: ["pg_dump"]        # Run pg_dump instead of postgres server
    command: ["-F", "c"]           # Arguments to pg_dump (custom format)
```

## Not using docker-compose
If you prefer not to use `docker-compose`, you can run the following command directly:

```bash
docker run --rm \
  -e PGPASSWORD=your_password \
  postgres:15 \
  pg_dump -h your_host -p your_port -U your_user -d your_dbname \
  --data-only --exclude-table='public.*migrations*' \
  > mydb_data_only.dump
```
