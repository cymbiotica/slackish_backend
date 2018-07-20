#!/bin/bash

curl "http://localhost:4741/channels" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
    --data '{
      "channel": {
      "name": "'"${NAME}"'",
      "description": "'"${DESC}"'"
      }
  }'

echo
# TOKEN="BAhJIiVlN2I1ZWI5YjA0MDE4OGRhZjVhMDgzZGM4NWZmMzhiMAY6BkVG--e8173305b15cf4c685d7a02b5d6c67b59449ac86" NAME="forum" DESC="main channel for communication" sh scripts/channel/create_channel.sh