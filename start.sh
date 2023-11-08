logo(){
echo '______ __________         _____         '
echo '___  //_/______(_)______ ____(_)____  __'
echo '__  ,<   _____  / _  __ `/__  / _  / / /'
echo '_  /| |  ____  /  / /_/ / _  /  / /_/ / '
echo '/_/ |_|  ___  /   \__,_/  /_/   \__,_/  '
echo '         /___/                          '
echo '#bulid2311081844'
}
stoped(){
read -p "输入任意字符以退出 "
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
输入start启动Java服务器
输入javav查看Java版本'

read -p "[container@kjaiu ~]# " SOFTWARE </dev/tty

case $SOFTWARE in
javav)
clear
logo
java -version
;;
start)
cd /home/container
clear
logo
java -Xms128M -XX:MaxRAMPercentage=95.0 -jar server.jar
;;

bds)
cd /home/container
clear
logo
if [ -e "bedrock_server" ]
then
./bedrock_server
else
echo '====================='
echo '正在更新官方基岩服务器'
echo '====================='
echo '请等待...'   
echo '====================='
rm -rf /home/container/server.properties
wget -O /home/container/bds.zip http://qxsh.tk/?go=bdsurl
unzip /home/container/bds.zip
rm -rf /home/container/bds.zip
clear
logo
echo '====================='
echo '安装完成...'   
echo '====================='
fi
;;
esac
stoped
