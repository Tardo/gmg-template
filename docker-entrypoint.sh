#!/bin/sh
set -e

cd /usr/src/app
npm install --no-save --production
gunicorn --worker-tmp-dir . run:app

exit 0
