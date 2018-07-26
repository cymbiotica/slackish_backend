#!/bin/bash

curl "http://localhost:4741/channels/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \

echo
# TOKEN="BAhJIiUwOTM1Yjc4ZWE0ZGY5YjFmNWQ4MzU3NTFiZjQxOTVmZQY6BkVG--25d936960b8992bc1f67abd1f8eba8429ef314ef"NAME="etc" DESC="chaos" sh scripts/channel/delete_channel.sh