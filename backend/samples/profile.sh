#!/usr/bin/env bash

query=''
route='profiles'

server=localhost:3333
protocol=http

curl -s -v --request GET \
  -H "Authorization: f3e50f3f" \
  $protocol://$server/$route?$query \
  | python -m json.tool
