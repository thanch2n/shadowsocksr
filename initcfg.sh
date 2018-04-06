#!/bin/bash

chmod +x *.sh
chmod +x shadowsocks/*.sh
cp -n apiconfig.py userapiconfig.py
cp -n config.json user-config.json
cp -n mysql.json usermysql.json

# add by @thanch2n
sed -i "s/API_INTERFACE = 'sspanelv2'/API_INTERFACE = 'mudbjson'/" userapiconfig.py
cp ./ssrmu /etc/init.d/ssrmu
chmod +x /etc/init.d/ssrmu
chkconfig --add ssrmu
chkconfig ssrmu on