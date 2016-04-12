#!/bin/bash

TMP_DOCKER_HOST_IP="`/sbin/ip route|awk '/default/ { print $3 }'`"
XDEBUG_REMOTE_IDE_KEY=${XDEBUG_REMOTE_IDE_KEY:-"magento_remote"}
XDEBUG_REMOTE_PORT=${XDEBUG_REMOTE_PORT:-9090}

echo "xdebug.remote_host=$TMP_DOCKER_HOST_IP" >> /etc/php5/fpm/conf.d/21-customdebug.ini
echo "xdebug.remote_ide=$XDEBUG_REMOTE_IDE_KEY" >> /etc/php5/fpm/conf.d/21-customdebug.ini
echo "xdebug.remote_port=$XDEBUG_REMOTE_PORT" >> /etc/php5/fpm/conf.d/21-customdebug.ini

/tmp/magento.sh && /usr/bin/supervisord -c /etc/supervisor/supervisord.conf
