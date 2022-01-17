#!/usr/bin/env bash

./zeroMixers.sh

FRONT_LEVEL="98"
SUB_LEVEL=${FRONT_LEVEL}
if [ -n "$1" ]; then
	FRONT_LEVEL=$1
	SUB_LEVEL=$1
fi
if [ -n "$2" ]; then
	SUB_LEVEL=$2
fi

# F L&R
amixer -c 1 sset 'AIn1 - Out1' ${FRONT_LEVEL}%
amixer -c 1 sset 'AIn2 - Out2' ${FRONT_LEVEL}%
# Sub
amixer -c 1 sset 'AIn1 - Out6' ${SUB_LEVEL}%
amixer -c 1 sset 'AIn2 - Out6' ${SUB_LEVEL}%
