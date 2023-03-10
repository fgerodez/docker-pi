#!/bin/sh

# Minidlna will never resart inside docker if this file is not purged
rm /run/minidlna/minidlna.pid

exec "$@"
