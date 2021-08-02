#!/bin/bash
set -eu

export EXTERNAL_REGISTRY=$1; shift
export OOT_DRIVER_IMAGE_NAME=$1; shift
export NODE_LABEL=$1; shift
export SCRIPT=`base64 -w 0 ./files/script/oot-driver`

envsubst < "./templates/oot-driver-machine-config.yaml.template" > "./oot-driver-machine-config.yaml"
