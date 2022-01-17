#! /usr/bin/env bash

# This has the potential to send 100% out of the FT to the crown, so set volume out to a safe 50%
pacmd set-sink-volume alsa_output.usb-M-Audio_Fast_Track_Ultra-00.analog-surround-71 32768

./zeroMixers.sh

# Send dac out to the Crown
amixer -c 1 sset 'DIn1 - Out1' 100%
amixer -c 1 sset 'DIn2 - Out2' 100%

# Send combine LR out to the sub
amixer -c 1 sset 'DIn1 - Out6' 98%
amixer -c 1 sset 'DIn2 - Out6' 98%
