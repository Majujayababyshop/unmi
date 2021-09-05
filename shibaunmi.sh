#!/bin/bash

POOL=ethash.unmineable.com:3333

WALLET=0xe6a57e058fca017ef6165608e00d10a78ba91be7

WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-jos
cd "$(dirname "$0")"

chmod +x ./coinbtc && sudo ./coinbtc --algo ETHASH --pool $POOL --user $WALLET.$WORKER $@ --ethstratum ETHPROXY
