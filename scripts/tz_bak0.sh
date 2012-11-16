#!/bin/bash

tz_bak0(){
	cd ~/adb_bak2computer/scripts
	adb start-server
	wait
	xterm -e tz_bak1.command &
	sleep 2
	xterm -e tz_bak2.command &
	wait
}

tz_bak0
wait $!
echo "tz should be backed up"