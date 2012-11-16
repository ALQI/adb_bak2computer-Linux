#!/bin/bash

efs_bak0(){
	cd ~/adb_bak2computer/scripts
	adb start-server
	wait
	xterm -e efs_bak1.command &
	sleep 2
	xterm -e efs_bak2.command &
	wait
}

efs_bak0
wait $!
echo "efs should be backed up"