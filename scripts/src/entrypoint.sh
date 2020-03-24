#!/bin/sh

SKIP_TEMPLATING=${SKIP_TEMPLATING:-''}

if [ -z "${SKIP_TEMPLATING}" ]; then
    echo "Templating index.html"
    /scripts/templateIndexHtml
else
    echo "Skipping templating, because env var SKIP_TEMPLATING is set"
fi

echo "Starting server"
exec "$@"