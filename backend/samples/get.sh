#!/usr/bin/env bash

query='name=David&idade=27'
route='users/1'

server=localhost:3333
protocol=http

curl -s -v --request GET \
  $protocol://$server/$route?$query \
  | python -m json.tool
