FROM resin/raspberry-pi-alpine-node

LABEL maintainer "Philipp Schmitt <philipp@schmitt.co>"

RUN apk add --no-cache zabbix-agent

ENV ZABBIX_SERVER=zabbix.example.com ZABBIX_HOSTNAME=raspberry-pi

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
