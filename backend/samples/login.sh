#!/usr/bin/env bash

query=''
route='sessions'

server=localhost:3333
protocol=http

curl -s -v --header "Content-Type: application/json" --request POST \
  --data '{
    "id": "f3e50f3f"
  }' \
  $protocol://$server/$route?$query \
  | python -m json.tool
