#!/bin/bash

if [ "$1" == "-h" ] ; then
	echo 'usage: docker run --rm -v ~/.aws:/home/jmeter/.aws -v /path/to/myproject:/home/jmeter/jmeter-ec2/myproject -e "count=1" z0beat/jmeter-ec2 projectName'
	echo
	echo "[project]         -	required, directory and jmx name"
	echo "[count]           -	optional, default=1"
	echo "[percent]         -	optional, default=100"
	echo "[setup]           -	optional, default='TRUE'"
	echo "[terminate]       -	optional, default='TRUE'"
  echo "[price]           - optional"
	echo
	exit
fi

cd /home/jmeter/jmeter-ec2/$1
../jmeter-ec2.sh
