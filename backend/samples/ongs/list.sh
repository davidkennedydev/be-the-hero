#!/usr/bin/env bash

query=''
route='ongs'

server=localhost:3333
protocol=http

curl -s -v --request GET \
  $protocol://$server/$route?$query \
  | python -m json.tool
