#!/bin/bash

fota_bak0(){
	cd ~/adb_bak2computer/scripts
	adb start-server
	wait
	xterm -e fota_bak1.command &
	sleep 2
	xterm -e fota_bak2.command &
	wait
}

fota_bak0
wait $!
echo "fota should be backed up"