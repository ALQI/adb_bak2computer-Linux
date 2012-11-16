#!/bin/bash

template0_bak0(){
	cd ~/adb_bak2computer
	xterm -e template1_bak1.command &
	sleep 2
	xterm -e template2_bak2.command &
	wait
}

template0_bak0
wait $!
echo "Template should be backed up"