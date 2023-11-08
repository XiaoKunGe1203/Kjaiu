#!/bin/bash
echo '============================'
echo '请等待'
echo '============================'
cd /tmp
curl -s -o /tmp/open.sh https://gh-proxy.com/https://raw.githubusercontent.com/XiaoKunGe1203/Kjaiu/main/start.sh --no-check-certificate
sh /tmp/open.sh
exit
