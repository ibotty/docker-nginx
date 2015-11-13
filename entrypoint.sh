#!/bin/sh
set -e

mkfifo /tmp/stdout
tail -f /tmp/stdout &
exec nginx
