#!/bin/bash

usage=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')

if [ $usage -gt 50 ]
then
  echo "WARNING: Disk usage is high ($usage%)"
else
  echo "Disk usage is normal ($usage%)"
fi
