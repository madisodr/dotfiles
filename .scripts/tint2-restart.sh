#!/bin/bash
#kills and restarts tint2 taskbar
(killall -e tint2) &
(sleep 1s && tint2) &
(sleep 5s && exit)
