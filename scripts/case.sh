#!/bin/bash

echo " Enter the enviroment for deployment"

read env

case $env in 
dev)
    echo "Deploying to Dev Sever"
    ;;
test)
    echo "Deploying to test server"
    ;;
prod)
    echo "Deploying to prod server"
    ;;
*)
    echo "alien enviroment"
    ;;
esac 
