#!/bin/bash

modem_cdma_bak0(){
	cd ~/adb_bak2computer/scripts
	adb start-server
	wait
	xterm -e modem_cdma_bak1.command &
	sleep 2
	xterm -e modem_cdma_bak2.command &
	wait
}

modem_cdma_bak0
wait $!
echo "CDMA Modem should be backed up"