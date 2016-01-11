#!/bin/sh

# local ip
IP=$(ip -4 -o a s dev eth1  | awk '{ print $4 }' | awk -F/ '{print $1}')
REMOTEIP=$(ip -4 -o a s dev eth1  | awk '{ print $4 }' | awk -F/ '{print $1}' | awk -F. '{ print $1 "." $2 "." $3 "." 1}')

cd /srv/tunneldigger/client
exec /srv/tunneldigger/client/l2tp_client -u foobar -i l2tp0 -t 2 -b $REMOTEIP:8942 -L 102400 -s /testing/hook_client.sh -f
