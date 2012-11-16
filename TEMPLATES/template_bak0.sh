#!/bin/bash

T_bak0(){
	cd ~/adb_bak2computer
	adb start-server
	wait
	xterm -e T_bak1.command &
	sleep 2
	xterm -e T_bak2.command &
	wait
}

T_bak0
wait $!
echo "T should be backed up"