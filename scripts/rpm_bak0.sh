#!/bin/bash

rpm_bak0(){
	cd ~/adb_bak2computer/scripts
	adb start-server
	wait
	xterm -e rpm_bak1.command &
	sleep 2
	xterm -e rpm_bak2.command &
	wait
}

rpm_bak0
wait $!
echo "RPM should be backed up"