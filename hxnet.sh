logo(){
echo '______  ______  _______   ____________________'
echo '___  / / /__  |/ /___  | / /___  ____/___  __/'
echo '__  /_/ / __    / __   |/ / __  __/   __  /   '
echo '_  __  /  _    |  _  /|  /  _  /___   _  /    '
echo '/_/ /_/   /_/|_|  /_/ |_/   /_____/   /_/     '
echo '#bulid2404204052'
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
输入terraria启动TerrariaVanilla服务器
输入install安装官方基岩版服务器（该操作将会删除所有文件）
输入inspterraria安装官方PC泰拉瑞亚服务器（该操作将会删除所有文件）
输入insmterraria安装官方手机泰拉瑞亚服务器（该操作将会删除所有文件）
输入javav查看Java版本'

read -p "[container@hxnet ~]# " SOFTWARE </dev/tty

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
terraria)
cd /home/container
clear
logo
./TerrariaServer.bin.x86_64 -config serverconfig.txt
;;
insmterraria)
cd /home/container
clear
logo
rm -rf *
echo '====================='
echo '正在重新安装官方泰拉瑞亚手机服务器'
echo '====================='
echo '请等待...'   
echo '====================='
chmod -R 755 *
DOWNLOAD_LINK=invalid
#V=$(curl -sSL https://terraria.org/api/get/dedicated-servers-names | jq -r .[] | head -1)
#DOWNLOAD_LINK="https://terraria.org/api/download/mobile-dedicated-server/${V}"
DOWNLOAD_LINK="https://terraria.org/api/download/pc-dedicated-server/terraria-server-1449.zip"
CLEAN_VERSION=$(echo ${DOWNLOAD_LINK##*/} | cut -d'-' -f3 | cut -d'.' -f1)

wget -O ${DOWNLOAD_LINK##*/} ${DOWNLOAD_LINK} 

unzip ${DOWNLOAD_LINK##*/}

cp -R ${CLEAN_VERSION}/Linux/* ./
chmod +x TerrariaServer.bin.x86_64

rm -rf ${CLEAN_VERSION}

cat <<EOF > serverconfig.txt
worldpath=/home/container/saves/Worlds
worldname=Kjaiu
world=/home/container/saves/Worlds/Kjaiu.wld
difficulty=3
autocreate=1
port=7777
maxplayers=8
EOF

mkdir -p /home/container/saves/Worlds
clear
logo
echo '====================='
echo '安装完成...'   
echo '====================='
;;
inspcterraria)
cd /home/container
clear
logo
rm -rf *
echo '====================='
echo '正在重新安装官方泰拉瑞亚PC服务器'
echo '====================='
echo '请等待...'   
echo '====================='
chmod -R 755 *
DOWNLOAD_LINK=invalid
#V=$(curl -sSL https://terraria.org/api/get/dedicated-servers-names | jq -r .[] | head -1)
#DOWNLOAD_LINK="https://terraria.org/api/download/pc-dedicated-server/${V}"
DOWNLOAD_LINK="https://terraria.org/api/download/pc-dedicated-server/terraria-server-1449.zip"
CLEAN_VERSION=$(echo ${DOWNLOAD_LINK##*/} | cut -d'-' -f3 | cut -d'.' -f1)

wget -O ${DOWNLOAD_LINK##*/} ${DOWNLOAD_LINK} 

unzip ${DOWNLOAD_LINK##*/}

cp -R ${CLEAN_VERSION}/Linux/* ./
chmod +x TerrariaServer.bin.x86_64

rm -rf ${CLEAN_VERSION}

cat <<EOF > serverconfig.txt
worldpath=/home/container/saves/Worlds
worldname=Hxnet
world=/home/container/saves/Worlds/Hxnet.wld
difficulty=3
autocreate=1
port=7777
maxplayers=8
EOF

mkdir -p /home/container/saves/Worlds
clear
logo
echo '====================='
echo '安装完成...'   
echo '====================='
;;
download)
cd /home/container
clear
logo
DOWNLOAD_LINK="${MC_VERSION}"
echo '====================='
echo "输入你的下载链接"
echo '====================='
read -p "下载链接: " DOWNLOAD_LINK </dev/tty
read -p "文件名称: " DOWNLOAD_Filename </dev/tty
wget -O ${DOWNLOAD_Filename} ${DOWNLOAD_LINK}
clear
logo
echo '====================='
echo '下载完成...'   
echo '====================='
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
