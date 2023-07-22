clear
echo '______  ___________            '
echo '___   |/  /_  ____/___________ '
echo '__  /|_/ /_  /    ___/ /___/ /_'
echo '_  /  / / / /___  /_  __/_  __/'
echo '/_/  /_/  \____/   /_/   /_/   '
                               
echo '==============================='
echo '正在下载服务端'
echo '==============================='
cd /tmp
echo '====================='
echo 'shell'
echo '====================='

read -p "输入: " JAVA_SOFTWARE </dev/tty
$JAVA_SOFTWARE

read -p "输入: " JAVA_SOFTWAR </dev/tty

case $JAVA_SOFTWAR in
y)
sh /tmp/open.sh
;;

esac




#wget https://minecraft.azureedge.net/bin-linux/bedrock-server-1.20.12.01.zip
#ls
#unzip bedrock-server-1.20.12.01.zip
#rm -rf bedrock-server-1.20.12.01.zip
#cd /home/container
#ls
#/tmp/bedrock_server
