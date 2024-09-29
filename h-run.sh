#!/bin/bash

source h-manifest.conf
source $CUSTOM_CONFIG_FILENAME
APPNMAE=$CUSTOM_NAME
APP_PATH=./$APPNMAE

pkill -9 $APPNMAE

GPU_STR=""
if command -v nvidia-smi >/dev/null 2>&1; then
    gpu_info=$(nvidia-smi -L)
    gpu_count=0
    while read -r line; do
        if [ $gpu_count -eq 0 ]; then
            GPU_STR="${gpu_count}"
        else
            GPU_STR="${GPU_STR},${gpu_count}"
        fi
        ((gpu_count++))

    done <<<"$gpu_info"
fi

$APP_PATH -g $GPU_STR -p $CUSTOM_URL -c $ACCOUNT >>${CUSTOM_LOG_BASENAME}1.log 2>&1
echo "$APP_PATH -g $GPU_STR -p $CUSTOM_URL >> ${CUSTOM_LOG_BASENAME}1.log 2>&1"
