#!/bin/bash
# 0 0 1 * * /bin/bash /usr/local/shadowsocksr/clearall.sh
cd /usr/local/shadowsocksr/
for p in  `/bin/python mujson_mgr.py -l | awk '{print $4}'`; do /bin/python mujson_mgr.py -c -p ${p}; done
