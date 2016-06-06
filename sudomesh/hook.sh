#!/bin/bash

STATE=$1
IFACE=$2

if [ "$STATE" == "session.up" ]; then

  ifconfig $IFACE 100.64.0.64 netmask 255.255.252.0 up

fi
