FROM yandex/clickhouse-server
RUN apt-get update && \
    wget https://repo.zabbix.com/zabbix/4.4/ubuntu/pool/main/z/zabbix-release/zabbix-release_4.4-1+bionic_all.deb && \
    dpkg -i zabbix-release_4.4-1+bionic_all.deb && \
    apt update && \
    apt-get install -y zabbix-agent && \
    apt-get install -y libxml2-utils && \
    mkdir /var/lib/zabbix && \
    apt-get install systemd && \
    service zabbix-agent enable
    
EXPOSE 8123 9000 10050
