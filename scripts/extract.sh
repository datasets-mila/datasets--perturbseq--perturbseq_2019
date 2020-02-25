#!/bin/bash

# this script is meant to be used with 'datalad run'

pip install -r scripts/requirements_extract.txt
ERR=$?
if [ $ERR -ne 0 ]; then
   echo "Failed to install requirements: pip install: $ERR"
   exit $ERR
fi

mkdir -p extract

jug status -- scripts/extract.py "./*.tar*" --output "extract/"
jug execute -- scripts/extract.py "./*.tar*" --output "extract/" &>> extract.out
