#!/bin/bash

SERVICE="apache2"

if ! systemctl is-active --quiet $SERVICE
then
    echo "$SERVICE is not running. Restarting the service..."
    sudo systemctl restart $SERVICE
    echo "$SERVICE is restarted.."
else
    echo "$SERVICE is running and healthy..."
fi

