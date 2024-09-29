#!/usr/bin/env bash
source $MINER_DIR/$CUSTOM_MINER/h-manifest.conf

algo='aleo'
version="1.11.26"
stats=""
unit="S/s"
khs=0

khs=$(tail -n 100 /hive/miners/custom/aleoprover/aleoprover1.log |grep "Last 1m speed(KP/s)" | awk 'END {print}'| awk '{print $5}')

khs_num=$(echo "$khs" | jq -R . | jq -s 'map(tonumber)[0]')

stats=$(jq -nc --argjson khs "$khs_num" \
	--arg hs_units "$unit" \
	--arg ver "$version" \
	--arg algo "$algo" \
	'{"khs":$khs, "hs_units":$hs_units, "ver":$ver, "algo":$algo}')


echo "$stats"
