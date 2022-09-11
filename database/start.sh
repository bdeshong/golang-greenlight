#!/bin/bash -ex

docker run \
    --name db \
    -e POSTGRES_PASSWORD=greenlight \
    -e PGDATA=/var/lib/postgresql/data/pgdata \
	-v /Users/brian/code/golang-greenlight/database/pgdata:/var/lib/postgresql/data \
    -p 5432:5432 \
    --rm \
    postgres
