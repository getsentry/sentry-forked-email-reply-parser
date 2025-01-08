#!/usr/bin/env bash
set -euxo pipefail
if ! grep -E '^[0-9]+\.[0-9]+\.[0-9]+-[0-9]+$' <<< "$2"; then
    : "expected #.#.#-# got $2"
    exit 1
fi
sed -i "s/^VERSION = '.*'$/VERSION = '$2'/" email_reply_parser/version.py
