#!/bin/bash
set -m
echo "ENTRO INICIO"
mongodb_cmd="mongod"
cmd="$mongodb_cmd"
echo "ENTRO INICIO 2"
echo "$ENV_ADMIN_USER";
echo "$ENV_ADMIN_PASSWORD";

if [ "$AUTH" == "yes" ]; then
    echo "ENTRO AUTH"
    cmd="$cmd --auth"
fi

$cmd &

if [ ! -f /data/db/.mongodb_password_set ]; then
    echo "ENTRO PASSWORD"
    /set_mongodb_password.sh
fi

fg