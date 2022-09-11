#!/bin/bash -ex

DIR="$(dirname "${BASH_SOURCE[0]}")"
DIR="$(realpath "${DIR}")"

docker run \
    --name db \
    -e POSTGRES_PASSWORD=greenlight \
    -e PGDATA=/var/lib/postgresql/data/pgdata \
	-v $DIR/pgdata:/var/lib/postgresql/data \
    -p 5432:5432 \
    --rm \
    postgres
