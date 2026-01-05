#!/bin/bash
docker exec -i capstone_project-db-1 /usr/bin/psql -U admin appdb <<EOF
CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100)
);
EOF
