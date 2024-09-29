#!/usr/bin/env bash

source h-manifest.conf

conf=""
conf+="ACCOUNT=\"$CUSTOM_TEMPLATE\""$'\n'
conf+="CUSTOM_URL=\"$CUSTOM_URL\""$'\n'

echo "$conf" > $CUSTOM_CONFIG_FILENAME