#!/usr/bin/env bash

query=''
route='incidents/1'

server=localhost:3333
protocol=http

curl -s -v --header "Content-Type: application/json" --request DELETE \
  -H "Authorization: f3e50f3f" \
  $protocol://$server/$route?$query \
  | python -m json.tool
