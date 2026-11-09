#!/bin/bash

DATE=$(date +%F_%H-%M-%S)

mkdir -p backups

cp -r project backups/project_$DATE

echo "Backup created sucessfully: project_$DATE"
