#!/bin/sh
set -x
set +e

INTERFACE="$3"

batctl if add $INTERFACE
ifconfig $INTERFACE up

ifdown bat0
ifup bat0

iptables -t nat -D POSTROUTING ! --destination 10.0.0.0/8 -j MASQUERADE
iptables -t nat -I POSTROUTING ! --destination 10.0.0.0/8 -j MASQUERADE

echo "1" > /proc/sys/net/ipv4/ip_forward

