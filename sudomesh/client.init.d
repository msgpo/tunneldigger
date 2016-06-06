#!/bin/sh
set -e

### BEGIN INIT INFO
# Provides:             tunneldigger
# Required-Start:       $local_fs $remote_fs $network $time
# Required-Stop:        $local_fs $remote_fs $network $time
# Should-Start:         $syslog
# Should-Stop:          $syslog
# Default-Start:        2 3 4 5
# Default-Stop:         0 1 6
# Short-Description:    wlan-slovenja tunneldigger client for l2tp tunnels
### END INIT INFO

DIGGER_PIDFILE="/var/run/tunneldigger.pid"

case "$1" in
    start)
#        /usr/local/bin/babeld -D -F -C 'redistribute local deny' -C 'redistribute if l2tp0' -C 'interface l2tp0 wired true' l2tp0
        /sbin/start-stop-daemon -S -q -b -m -p $DIGGER_PIDFILE -x /usr/local/bin/l2tp_client -- -u 42 -b exit1.sudomesh.org:8942 -i l2tp0 -s /opt/mesh_tunnel/hook.sh
        echo "mesh connection started"
        ;;

    stop)
        # TODO stop babeld in a nicer way
#        killall babeld
        start-stop-daemon -K -q -p $DIGGER_PIDFILE 
        while test -d "/proc/${DIGGER_PIDFILE}"; do
             echo "  waiting for mesh connection to stop"
             sleep 1
        done
        echo "mesh connection stopped"
        ;;
    *)
        echo "Usage: $0 {start|stop}"
        exit 1
        ;;
esac

exit 0

