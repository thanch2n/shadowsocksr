#!/bin/bash
cp ./ssr.service ./ssr.timer /usr/lib/systemd/system/
systemctl daemon-reload
systemctl enable ssr.timer
systemctl start ssr.service
# cp ./ssrmu /etc/init.d/ssrmu
# chmod +x /etc/init.d/ssrmu
# chkconfig --add ssrmu
# chkconfig ssrmu on