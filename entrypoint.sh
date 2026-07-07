#!/bin/sh
set -e

if [ "$MARIO_PINK" = "true" ]; then
  cp /usr/share/nginx/html/images/pink.png /usr/share/nginx/html/images/smallmariosheet.png
fi

exec /docker-entrypoint.sh nginx -g "daemon off;"
