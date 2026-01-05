#!/bin/bash
docker exec db psql -U admin appdb -f /docker-entrypoint-initdb.d/init.sql
