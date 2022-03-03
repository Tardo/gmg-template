#!/bin/sh
set -e

cd /app

pip install -r requirements.txt
npm install --production

gunicorn --worker-tmp-dir . run:app

exit 0
