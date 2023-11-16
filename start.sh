logo(){
echo '______ __________         _____         '
echo '___  //_/______(_)______ ____(_)____  __'
echo '__  ,<   _____  / _  __ `/__  / _  / / /'
echo '_  /| |  ____  /  / /_/ / _  /  / /_/ / '
echo '/_/ |_|  ___  /   \__,_/  /_/   \__,_/  '
echo '         /___/                          '
echo '#bulid2311160849'
}
stoped(){
echo '输入任意字符以退出'
read -p "" RRR </dev/tty
clear
logo
echo '==============================='
echo '感谢你的支持，再见！'
echo '==============================='
exit
}
clear
logo
echo '
输入bds启动官方基岩服务器
输入run启动Java服务器
输入build安装服务器整合包
输入install安装基岩版服务器
输入download下载Java服务端
输入javav查看Java版本'

read -p "[container@kjaiu ~]# " SOFTWARE </dev/tty

case $SOFTWARE in
javav)
clear
logo
java -version
;;
run)
cd /home/container
clear
logo
java -Xms128M -XX:MaxRAMPercentage=95.0 -jar server.jar
;;

bds)
cd /home/container
clear
logo
./bedrock_server
;;
esac
stoped
