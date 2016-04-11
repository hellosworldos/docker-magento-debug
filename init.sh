#!/bin/bash

export TMP_DOCKER_HOST_IP="`/sbin/ip route|awk '/default/ { print $3 }'`"

echo "xdebug.remote_host=$TMP_DOCKER_HOST_IP" >> /etc/php5/fpm/conf.d/21-customdebug.ini

/tmp/magento.sh && /usr/bin/supervisord -c /etc/supervisor/supervisord.conf
