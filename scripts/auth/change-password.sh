#!/bin/bash

curl "http://localhost:4741/change-password" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "passwords": {
      "old": "'"${OLDPW}"'",
      "new": "'"${NEWPW}"'"
    }
  }'

echo
# TOKEN="BAhJIiVhYmVhMTZlZmU1N2VjMzRkNTYwZWUwZGQzNjU2YjkzNAY6BkVG--6524d5ac087896851c286cd11decad1ccb533743" OLDPW="123" NEWPW="321" sh scripts/auth/change-password.sh