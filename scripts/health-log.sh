#!/bin/bash

LOG_FILE="monitoring.log"

echo "====================================="
echo "SIMPLE MONITORING SCRIPT STARTED"
echo "Time: $(date)"
echo "====================================="

echo "Monitoring Started - $(date)" > "LOG_FILE"

echo "" | tee -a "$LOG_FILE"
echo "SYSTEM HEALTH CHECK" | tee -a "$LOG_FILE"

echo "-------------------------------------" | tee -a "$LOG_FILE"

#CPU USAGE REPORT

CPU=$(vmstat 1 2 | tail -1 | awk '{print 100 - $15}')
echo "CPU Usage : $CPU%" | tee -a "$LOG_FILE"

#MEMORY USAGE

MEM=$(free | grep Mem | awk '{printf "%.0f", "$3/$2 * 100"}')
echo "Memory Usage : $MEM%" | tee -a "$LOG_FILE"

#DISK USAGE

DISK=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')
echo "Disk Usage : $DISK%" | tee -a "$LOG_FILE"

echo "" | tee -a "$LOG_FILE"

echo "Monitoring Completed at $(date)" | tee -a "$LOG_FILE"

echo "======================================" | tee -a "$LOG_FILE"

echo "Script finished successfully!"

echo "Report saved in: $LOG_FILE"
