#!/bin/bash

param_bak0(){
	cd ~/adb_bak2computer/scripts
	adb start-server
	wait
	xterm -e param_bak1.command &
	sleep 2
	xterm -e param_bak2.command &
	wait
}

param_bak0
wait $!
echo "Param should be backed up"