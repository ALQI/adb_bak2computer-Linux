#!/bin/bash

modem2_lte_bak0(){
	cd ~/adb_bak2computer/scripts
	adb start-server
	wait
	xterm -e modem2_lte_bak1.command &
	sleep 2
	xterm -e modem2_lte_bak2.command &
	wait
}

modem2_lte_bak0
wait $!
echo "LTE Modem 2 should be backed up"