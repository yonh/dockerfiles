#!/bin/bash

chown www-data.www-data /www -R

PID=/run/apache2/apache2.pid
if [ -f $PID ]; then
	cat $PID |xargs kill -9 >/dev/null 2>/dev/null
	rm -f $PID
fi


/usr/sbin/apache2ctl -DFOREGROUND

exit 0
