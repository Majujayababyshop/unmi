#!/bin/bash

POOL=ethash.unmineable.com:3333

WALLET=SHIB:0xe6a57e058fca017ef6165608e00d10a78ba91be7

WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-JOS
cd "$(dirname "$0")"

chmod +x ./bionic && sudo ./bionic --algo ETHASH --pool $POOL --user $WALLET.$WORKER $@ --ethstratum ETHPROXY
