#!/bin/bash

curl "http://localhost:4741/sign-out" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}"

echo
# TOKEN="BAhJIiVhYmVhMTZlZmU1N2VjMzRkNTYwZWUwZGQzNjU2YjkzNAY6BkVG--6524d5ac087896851c286cd11decad1ccb533743"  sh scripts/auth/sign-out.sh