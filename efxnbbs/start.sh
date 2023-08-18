bnmb(){
    echo '#bulid2308181833'
}
logo(){
echo '______  ___________            '
echo '___   |/  /_  ____/___________ '
echo '__  /|_/ /_  /    ___/ /___/ /_'
echo '_  /  / / / /___  /_  __/_  __/'
echo '/_/  /_/  \____/   /_/   /_/   '
echo'EFXNBBS赞助节点'
}
oks(){
    clear
logo
bnmb
echo '
输入run启动服务器
输入tools进入工具箱
[container@mcpp ~]# '

read -p "输入: " SOFTWARE </dev/tty

case $SOFTWARE in
tools)
clear
logo
bnmb
echo '具体还没写呢'
;;

run)
clear
logo
cd /home/container/
echo '==============================='
echo '服务器启动'
echo '==============================='
logo
bnmb
/home/container/bedrock_server

clear
rm -rf /home/container/tmp
logo
bnmb
echo '==============================='
echo '感谢你的支持，再见！'
echo '==============================='
exit


;;
stop)
clear
rm -rf /home/container/tmp
logo
bnmb
echo '==============================='
echo '感谢你的支持，再见！'
echo '==============================='
exit


;;

esac
}

nook(){
    clear
    logo
    echo '开始进行部署工程'
    bnmb
    rm -rf server.properties
    wget https://192.168.2.5/bds1.20.13.1.zip --no-check-certificate
    unzip bds1.20.13.1.zip
    rm -rf bds1.20.13.1.zip
    clear
    logo
    bnmb
    echo '==============================='
    echo '部署完成，请重新启动！'
    echo '==============================='
}


cd /home/container/
if [ -e "allowlist.json" ]
then
oks

else

nook

fi
