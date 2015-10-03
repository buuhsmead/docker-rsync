#!/bin/bash

[ -f /modules/.modules.conf ] && cat /modules/.modules.conf >> /etc/rsyncd.conf

chmod o-w,g-w -R /modules/*
chown rsync:rsync -R /modules/*

/usr/bin/rsync --daemon --no-detach --config=/etc/rsyncd.conf --log-file=/var/log/rsyncd.log -v
