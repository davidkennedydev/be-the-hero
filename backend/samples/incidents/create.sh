#!/usr/bin/env bash

query=''
route='incidents'

server=localhost:3333
protocol=http

curl -s -v --header "Content-Type: application/json" --request POST \
  -H "Authorization: ec701e95" \
  --data '{
    "title": "caso 1",
    "description": "detalhes do caso",
    "value": "120"
  }' \
  $protocol://$server/$route?$query \
  | python -m json.tool
