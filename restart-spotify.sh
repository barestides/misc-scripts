#!/usr/bin/env bash

#I'm convinced that jack messes with the audio quality of spotify somehow. After jack is stopped, this
# should be run to get spotify running with pulseaudio

killall spotify

pulseaudio --kill
pulseaudio --start

cmd="spotify"

nohup $cmd &>/dev/null &
