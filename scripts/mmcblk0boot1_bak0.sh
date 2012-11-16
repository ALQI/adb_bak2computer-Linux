#!/bin/bash

mmcblk0boot1_bak0(){
	cd ~/adb_bak2computer/scripts
	adb start-server
	wait
	xterm -e mmcblk0boot1_bak1.command &
	sleep 2
	xterm -e mmcblk0boot1_bak2.command &
	wait
}

mmcblk0boot1_bak0
wait $!
echo "mmcblk0boot1 should be backed up"