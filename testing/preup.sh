#!/bin/sh
PROXY_IP=1.1.1.1
ROUTER_IP=192.168.1.1
./swgp-go -confPath ./swgp_client.conf&
ip route add $PROXY_IP via $ROUTER_IP dev eth0
sleep 2
