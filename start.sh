#!/bin/bash

[ "${PORT}" == "" ] && PORT=8873
[ "${CONFIG_FILE}" == "" ] && CONFIG_FILE="/modules/.modules.conf"
echo "*** Using config ${CONFIG_FILE}"

[ -f ${CONFIG_FILE} ] && cat ${CONFIG_FILE} >> /etc/rsyncd.conf

#chmod o-w,g-w -R /modules/*
#chown rsync:rsync -R /modules/*

/usr/bin/rsync --daemon --port=${PORT} --config=/etc/rsyncd.conf --log-file=/modules/rsyncd.log -v

tail -f /modules/*.log
