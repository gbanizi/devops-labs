#!/bin/bash

find backups/ -type f -mtime +7 -delete

echo "old backups (older than 7 days) deleted sucessfullyt!"
