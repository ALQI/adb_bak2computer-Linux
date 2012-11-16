#!/bin/bash

recovery_bak0(){
	cd ~/adb_bak2computer/scripts
	adb start-server
	wait
	xterm -e recovery_bak1.command &
	sleep 2
	xterm -e recovery_bak2.command &
	wait
}

recovery_bak0
wait $!
echo "Recovery should be backed up"