#!/bin/bash

servers=('test-server' "db-server" "prod-server")

for car in ${servers[@]}
do
    echo "App deployed in $servers"
done
