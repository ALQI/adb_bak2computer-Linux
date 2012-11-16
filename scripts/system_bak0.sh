#!/bin/bash

system_bak0(){
	cd ~/adb_bak2computer/scripts
	adb start-server
	wait
	xterm -e system_bak1.command &
	sleep 2
	xterm -e system_bak2.command &
	wait
}

system_bak0
wait $!
echo "System should be backed up"