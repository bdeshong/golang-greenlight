#!/bin/bash -ex
docker exec -it db psql $GREENLIGHT_DB_DSN
