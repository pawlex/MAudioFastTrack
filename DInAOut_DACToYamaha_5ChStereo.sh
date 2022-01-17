./zeroMixers.sh

# Send the DSP coaxial digital outputs to the Yamaha (AV2)
amixer -c 1 sset 'DIn1 - Out7' 100%
amixer -c 1 sset 'DIn2 - Out8' 100%

# Route the Yamaha front channels to the Crown amp
amixer -c 1 sset 'AIn1 - Out1' 99%
amixer -c 1 sset 'AIn2 - Out2' 99%

# Route the subwoofer from the yamaha front channels.
amixer -c 1 sset 'AIn1 - Out6' 100%
amixer -c 1 sset 'AIn2 - Out6' 100%

