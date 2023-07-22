bnmb(){
    echo '#bulid2307221954'
}
oks(){
    clear
echo '______  ___________            '
echo '___   |/  /_  ____/___________ '
echo '__  /|_/ /_  /    ___/ /___/ /_'
echo '_  /  / / / /___  /_  __/_  __/'
echo '/_/  /_/  \____/   /_/   /_/   '
bnmb
echo '
输入run启动服务器
输入tools进入工具箱
[container@mcpp ~]# '

read -p "输入: " SOFTWARE </dev/tty

case $SOFTWARE in
tools)
clear
echo '______  ___________            '
echo '___   |/  /_  ____/___________ '
echo '__  /|_/ /_  /    ___/ /___/ /_'
echo '_  /  / / / /___  /_  __/_  __/'
echo '/_/  /_/  \____/   /_/   /_/   '
bnmb
echo '具体还没写呢'
;;

run)
clear
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
bnmb
./start

clear
echo '______  ___________            '
echo '___   |/  /_  ____/___________ '
echo '__  /|_/ /_  /    ___/ /___/ /_'
echo '_  /  / / / /___  /_  __/_  __/'
echo '/_/  /_/  \____/   /_/   /_/   '
bnmb
echo '==============================='
echo '感谢你的支持，再见！'
echo '==============================='
exit


;;
stop)
clear
echo '______  ___________            '
echo '___   |/  /_  ____/___________ '
echo '__  /|_/ /_  /    ___/ /___/ /_'
echo '_  /  / / / /___  /_  __/_  __/'
echo '/_/  /_/  \____/   /_/   /_/   '
bnmb
echo '==============================='
echo '感谢你的支持，再见！'
echo '==============================='
exit


;;

esac
}

nook(){
rm -rf /home/container/*
    clear
    echo '______  ___________            '
    echo '___   |/  /_  ____/___________ '
    echo '__  /|_/ /_  /    ___/ /___/ /_'
    echo '_  /  / / / /___  /_  __/_  __/'
    echo '/_/  /_/  \____/   /_/   /_/  
    开始进行安装工程'
    bnmb

    wget http://10.0.2.22/bedrock-server-1.20.12.01.zip
    unzip bedrock-server-1.20.12.01.zip
    rm -rf bedrock-server-1.20.12.01.zip 
    mv bedrock_server start
    clear
    echo '______  ___________            '
    echo '___   |/  /_  ____/___________ '
    echo '__  /|_/ /_  /    ___/ /___/ /_'
    echo '_  /  / / / /___  /_  __/_  __/'
    echo '/_/  /_/  \____/   /_/   /_/   '
    bnmb
    echo '==============================='
    echo '安装完成，请重新启动！'
    echo '==============================='
}

cd /home/container/
if [ -e "start" ]
then
oks

else

nook

fi
