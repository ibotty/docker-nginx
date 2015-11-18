#!/bin/sh
set -e

mkfifo /tmp/stdout
tail -f /tmp/stdout 1>&2 &

exec nginx
