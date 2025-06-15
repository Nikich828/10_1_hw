#!/bin/bash
 
if ! ss -tuln | grep -q ':80\b'; then
	exit 1
fi
 
if [ ! -f "/var/www/html/index.nginx-debian.html" ]; then
	exit 1
fi
 
exit 0
