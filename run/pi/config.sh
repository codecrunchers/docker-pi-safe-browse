#!/bin/sh
function clean_up {
	exit
}
service ssh start
trap clean_up SIGHUP SIGINT SIGTERM
while true; do sleep 10; done


