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
# TOKEN="BAhJIiU1Y2FjMzRkMjI5NmNmNTUwOGMzZDczNzRmODI3NjNiNgY6BkVG--00efe983082dcccc572b0ae60ec34e7708e892e2" NAME="etc" DESC="chaos" sh scripts/channel/create_channel.sh