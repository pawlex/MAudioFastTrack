./zeroMixers.sh

# Set the DSP output to the AUX or AV jack on the Yamaha
amixer -c 1 sset 'DIn1 - Out7' 100%
amixer -c 1 sset 'DIn2 - Out8' 100%

# Route the Yamaha front channels and route them to the Crown amp
amixer -c 1 sset 'AIn1 - Out1' 99%
amixer -c 1 sset 'AIn2 - Out2' 99%
