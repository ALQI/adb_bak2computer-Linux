#!/bin/bash

internalSD_bak0(){
	cd ~/adb_bak2computer/scripts
	adb start-server
	wait
	xterm -e internalSD_bak1.command &
	sleep 2
	xterm -e internalSD_bak2.command &
	wait
}

internalSD_bak0
wait $!
echo "internalSD should be backed up"