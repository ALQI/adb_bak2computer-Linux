#!/bin/bash

cache_bak0(){
	cd ~/adb_bak2computer/scripts
	adb start-server
	wait
	xterm -e cache_bak1.command &
	sleep 2
	xterm -e cache_bak2.command &
	wait
}

cache_bak0
wait $!
echo "Cache should be backed up"
