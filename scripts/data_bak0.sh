#!/bin/bash

data_bak0(){
	cd ~/adb_bak2computer/scripts
	adb start-server
	wait
	xterm -e data_bak1.command &
	sleep 2
	xterm -e data_bak2.command &
	sleep 2
	xterm -e data_bak3.command &
	wait
}

data_bak0
wait
echo "Data should be backed up"

# cd ~/adb_bak2computer
# xterm -e data_bak4.command &
# sleep 2
