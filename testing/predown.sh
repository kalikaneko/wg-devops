#!/bin/sh
PROXY_IP=1.1.1.1
ROUTER_IP=192.168.1.1
pkill -9 swgp-go || echo "no such proc"
ip route del $PROXY_IP via $ROUTER_IP dev eth0
