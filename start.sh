logo(){
echo '______ __________         _____         '
echo '___  //_/______(_)______ ____(_)____  __'
echo '__  ,<   _____  / _  __ `/__  / _  / / /'
echo '_  /| |  ____  /  / /_/ / _  /  / /_/ / '
echo '/_/ |_|  ___  /   \__,_/  /_/   \__,_/  '
echo '         /___/                          '
echo '#bulid2311161427'
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
输入build安装服务器整合包 （该操作将会删除所有文件）
输入install安装基岩版服务器（该操作将会删除所有文件）
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
build)
cd /home/container
clear
logoSERVER_JARFILE="server.jar"
DOWNLOAD_LINK="http://10.0.2.22/down.php/${BUILD_HASH}"

echo "输入标识"
read -p "Version: " BUILD_HASH </dev/tty

curl -o server.jar ${DOWNLOAD_LINK}
;;
download)
cd /home/container
clear
logo
SERVER_JARFILE="server.jar"
DOWNLOAD_LINK="${MC_VERSION}"
echo "输入你的下载链接"
read -p "下载链接: " DOWNLOAD_LINK </dev/tty

curl -o server.jar ${DOWNLOAD_LINK}
;;
install)
cd /home/container
clear
logo
echo '====================='
echo '正在重新安装官方基岩服务器'
echo '====================='
echo '请等待...'   
echo '====================='
rm -rf /home/container/*
wget -O /home/container/bds.zip http://qxsh.tk/?go=bdsurl
unzip /home/container/bds.zip
rm -rf /home/container/bds.zip
clear
logo
echo '====================='
echo '安装完成...'   
echo '====================='
;;

bds)
cd /home/container
clear
logo
./bedrock_server
;;
esac
stoped
