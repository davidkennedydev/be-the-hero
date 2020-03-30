#!/usr/bin/env bash

query=''
route='profiles'

server=localhost:3333
protocol=http

curl -s -v --request GET \
  -H "Authorization: edf162c4" \
  $protocol://$server/$route?$query \
  | python -m json.tool
