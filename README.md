# DuckAdmin

DuckAdmin is a lightweight application designed to execute SQL queries on DuckDB using Docker. It simplifies running SQL operations within a containerized environment.

## Prerequisites

- [Docker](https://www.docker.com/)
- [Docker Compose](https://docs.docker.com/compose/)

## How to Run

```sh
docker compose up -d
docker logs --tail 1000 -f duckdb
```

Every time the `exec.sql` file is modified, the new SQL query is automatically applied using DuckDB. The query results are then displayed in the container logs.

<video src="https://github.com/user-attachments/assets/4cdcbc80-1982-4b0a-b45a-8da6760bce9d"> </video>
