#!/bin/bash

THRESHOLD=80
USAGE=$(df -h / | awk 'NR==2 {print $5}' | tr -d '%')

if [[ $USAGE -ge $THRESHOLD ]]; then
  echo "WARNING: Disk usage is ${USAGE}%"
else
  echo "Disk usage is normal: ${USAGE}%"
fi 
