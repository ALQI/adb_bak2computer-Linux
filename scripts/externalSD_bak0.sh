#!/bin/bash

externalSD_bak0(){
	cd ~/adb_bak2computer/scripts
	adb start-server
	wait
	xterm -e externalSD_bak1.command &
	sleep 2
	xterm -e externalSD_bak2.command &
	wait
}

externalSD_bak0
wait $!
echo "externalSD should be backed up"