#!/usr/bin/env ash

# Update zabbix-agent config
sed -i 's/^\(Server\(Active\)\?\)=.*/\1='"${ZABBIX_SERVER}"'/' /etc/zabbix/zabbix_agentd.conf
sed -i 's/^\(Hostname\)=.*/\1='"${ZABBIX_HOSTNAME}"'/' /etc/zabbix/zabbix_agentd.conf

# Run zabbix-agent in foreground
exec su zabbix -s /bin/ash -c "zabbix_agentd -f"
