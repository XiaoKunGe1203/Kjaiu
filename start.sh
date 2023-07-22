clear
echo '______  ___________            '
echo '___   |/  /_  ____/___________ '
echo '__  /|_/ /_  /    ___/ /___/ /_'
echo '_  /  / / / /___  /_  __/_  __/'
echo '/_/  /_/  \____/   /_/   /_/   #bulid2307221838'
echo '
输入bulid进入重新部署
输入tools进入工具箱
输入run启动服务器
[container@mcpp ~]# '

read -p "输入: " SOFTWARE </dev/tty

case $SOFTWARE in
bulid)
clear
rm -rf /home/container/tmp
clear
echo '______  ___________            '
echo '___   |/  /_  ____/___________ '
echo '__  /|_/ /_  /    ___/ /___/ /_'
echo '_  /  / / / /___  /_  __/_  __/'
echo '/_/  /_/  \____/   /_/   /_/  
开始进行部署工程'
mkdir /home/container/tmp
cd /home/container/tmp
wget http://10.0.2.22/bedrock-server-1.20.12.01.zip
unzip bedrock-server-1.20.12.01.zip
cp -a allowlist.json ..
cp -a permissions.json ..
cp -a server.properties ..
cd ..
rm -rf tmp
clear
echo '______  ___________            '
echo '___   |/  /_  ____/___________ '
echo '__  /|_/ /_  /    ___/ /___/ /_'
echo '_  /  / / / /___  /_  __/_  __/'
echo '/_/  /_/  \____/   /_/   /_/   '
echo '==============================='
echo '部署结束，请重新启动！'
echo '==============================='
;;
tools)
clear
echo '______  ___________            '
echo '___   |/  /_  ____/___________ '
echo '__  /|_/ /_  /    ___/ /___/ /_'
echo '_  /  / / / /___  /_  __/_  __/'
echo '/_/  /_/  \____/   /_/   /_/  
具体还没写呢'
;;

run)
clear
rm -rf /home/container/tmp
echo '______  ___________            '
echo '___   |/  /_  ____/___________ '
echo '__  /|_/ /_  /    ___/ /___/ /_'
echo '_  /  / / / /___  /_  __/_  __/'
echo '/_/  /_/  \____/   /_/   /_/   '
echo '==============================='
echo '正在下载服务端'
echo '==============================='
mkdir /home/container/tmp
cd /home/container/tmp
wget http://10.0.2.22/bedrock-server-1.20.12.01.zip
unzip bedrock-server-1.20.12.01.zip
rm -rf bedrock-server-1.20.12.01.zip
cp -l -a behavior_packs ..
cp -l -a resource_packs ..
cp -l -a definitions ..
cp -l -a config ..
cp -l -a bedrock_server_symbols.debug ..



cd /home/container/
clear
echo '==============================='
echo '服务器启动'
echo '==============================='
echo '______  ___________            '
echo '___   |/  /_  ____/___________ '
echo '__  /|_/ /_  /    ___/ /___/ /_'
echo '_  /  / / / /___  /_  __/_  __/'
echo '/_/  /_/  \____/   /_/   /_/   '
/home/container/tmp/bedrock_server

clear
rm -rf /home/container/tmp
echo '______  ___________            '
echo '___   |/  /_  ____/___________ '
echo '__  /|_/ /_  /    ___/ /___/ /_'
echo '_  /  / / / /___  /_  __/_  __/'
echo '/_/  /_/  \____/   /_/   /_/   '
echo '==============================='
echo '感谢你的支持，再见！'
echo '==============================='
exit


;;
stop)
clear
rm -rf /home/container/tmp
echo '______  ___________            '
echo '___   |/  /_  ____/___________ '
echo '__  /|_/ /_  /    ___/ /___/ /_'
echo '_  /  / / / /___  /_  __/_  __/'
echo '/_/  /_/  \____/   /_/   /_/   '
echo '==============================='
echo '感谢你的支持，再见！'
echo '==============================='
exit


;;

esac
