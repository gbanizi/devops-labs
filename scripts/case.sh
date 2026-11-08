#!/bin/bash

echo " Enter Option"

read option

case $option in 
start)
    echo "starting server"
    ;;
stop)
    echo "stopping server"
    ;;
restart)
    echo "restarting server"
    ;;
*)
    echo "invalid option"
    ;;
esac 
