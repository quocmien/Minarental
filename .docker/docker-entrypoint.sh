#!/bin/sh
set -e

npm run build

npm run preview
# npm run dev

exec "$@"
