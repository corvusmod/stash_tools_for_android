#!/bin/bash
PRO_NAME="'{"name": "$1"}'"
echo $PRO_NAME
curl -u user:password -X POST -H "Accept: application/json"  -H "Content-Type: application/json" "https://SERVER/projects/CODE/repos/" -d '{"name": "'"$1"'"}'
