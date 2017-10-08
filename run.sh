#!/usr/bin/env bash

docker run -d --restart=always \
  --privileged \
  --pid=host \
  --net=host \
  -p 10050:10050 \
  -e ZABBIX_SERVER=zabbix.example.com \
  -e ZABBIX_HOSTNAME=raspberrypi \
  pschmitt/armhf-zabbix-agent
