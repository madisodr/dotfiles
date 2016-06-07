#!/bin/sh
sudo service bluetooth restart
killall -9 pulseaudio
bt-audio -c 00:18:6B:5F:5D:7C
