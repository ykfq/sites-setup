#!/usr/bin/env bash

BASEDIR=$(cd $(dirname $0)/; pwd -P)

/bin/cp -f make_gopl-zh.sh /usr/bin/

sed -i '/make_gopl-zh.sh*/d' /etc/crontab 2>&1
echo "0 0 * * * root /bin/bash ${BASEDIR}/make_gopl-zh.sh >> /var/log/gopl-zh_build.log 2>&1" >> /etc/crontab

systemctl restart crond

