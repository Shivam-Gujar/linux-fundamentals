#!/bin/bash

FREE_RAM=$(free -m | awk '/^Mem:/ {print $7}')

if [[ $FREE_RAM -lt 500 ]]; then
  echo "Low RAM available: ${FREE_RAM}MB"
else
  echo "Sufficient RAM: ${FREE_RAM}MB"
fi

