#!/bin/bash
cd /home/container

echo '============================'
echo '请等待'
echo '============================'
cd /tmp
curl -s -o /tmp/open.sh https://ghproxy.com/https://raw.githubusercontent.com/XiaoKunGe1203/MCPPSH/main/start.sh
sh /tmp/open.sh
exit
