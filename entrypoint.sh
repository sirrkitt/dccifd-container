chown -R dcc:dcc /socket /data

exec /var/dcc/libexec/dccifd -b -t ALL,NEVER,MANY -p /socket/dccifd -h /var/dcc -I dcc -L off -l /data
