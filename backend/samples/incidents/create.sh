#!/usr/bin/env bash

query=''
route='incidents'

server=localhost:3333
protocol=http

curl -s -v --header "Content-Type: application/json" --request POST \
  -H "Authorization: edf162c4" \
  --data '{
    "title": "primeiro caso teste",
    "description": "detalhes do caso",
    "amount": "42"
  }' \
  $protocol://$server/$route?$query \
  | python -m json.tool
