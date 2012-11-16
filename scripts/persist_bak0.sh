#!/bin/bash

persist_bak0(){
	cd ~/adb_bak2computer/scripts
	adb start-server
	wait
	xterm -e persist_bak1.command &
	sleep 2
	xterm -e persist_bak2.command &
	wait
}

persist_bak0
wait $!
echo "persist should be backed up"