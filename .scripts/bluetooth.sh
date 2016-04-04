#!/bin/sh
killall -9 pulseaudio
pulseaudio -k
bt-audio -c 00:18:6B:5F:5D:7C
pulseaudio -k
