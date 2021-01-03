#!/bin/sh

MNTDIR=

if ! mountpoint -q "$MNTDIR"; then
    if ! mount --bind "$MNTDIR" "$MNTDIR" \
            || ! mount -o remount,exec "$MNTDIR"; then
        echo "I was not able to change the permissions in /tmp :( " >&2
    fi
fi
