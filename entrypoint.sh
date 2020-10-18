#!/bin/sh
set -e
deluser dcc

addgroup -S -g $GID dcc
adduser -S -u $UID -h /var/dcc -D -H -s /sbin/nologin --gecos "DCC antispam" -G dcc dcc

chown -R dcc:dcc /socket /data


exec /var/dcc/libexec/dccifd -b -t ALL,NEVER,MANY -p /socket/dccifd -h /var/dcc -I dcc -L off -l /data
