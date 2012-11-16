#!/bin/bash

boot_bak0(){
	cd ~/adb_bak2computer/scripts
	adb start-server
	wait
	xterm -e boot_bak1.command &
	sleep 2
	xterm -e boot_bak2.command &
	wait
}

boot_bak0
wait $!
echo "Boot should be backed up"