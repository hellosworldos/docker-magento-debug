# docker-magento-debug
Docker image to run Magento1 CE web server and it's cron for debugging/development

## default ENV variables:
* XDEBUG_REMOTE_IDE_KEY=magento_remote
* XDEBUG_REMOTE_PORT=9090


# xdebug setup for PHPStorm

* File > Settings > Languages & Frameworks > PHP > Debug:

 * Debug Port: 9090
 * Can accept external connections: Yes

* File > Settings > Languages & Frameworks > PHP > Debug > DBGp Proxy:

 * IDE key: magento_remote
 * Port: 9090
