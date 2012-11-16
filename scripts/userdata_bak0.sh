#!/bin/bash

userdata_bak0(){
	cd ~/adb_bak2computer/scripts
	adb start-server
	wait
	xterm -e userdata_bak1.command &
	sleep 2
	xterm -e userdata_bak2.command &
	wait
}

userdata_bak0
wait
echo "Data should be backed up"