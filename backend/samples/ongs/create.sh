#!/usr/bin/env bash

query=''
route='ongs'

server=localhost:3333
protocol=http

curl -s -v --header "Content-Type: application/json" --request POST \
  --data '{
    "name": "APAD",
    "email": "contato@apad.com.br",
    "whatsapp": "420000000",
    "city": "Rio do Sul",
    "uf": "SC"
  }' \
  $protocol://$server/$route?$query \
  | python -m json.tool
