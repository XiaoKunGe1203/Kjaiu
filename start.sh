clear
echo '______  ___________            '
echo '___   |/  /_  ____/___________ '
echo '__  /|_/ /_  /    ___/ /___/ /_'
echo '_  /  / / / /___  /_  __/_  __/'
echo '/_/  /_/  \____/   /_/   /_/   '
                               
echo '==============================='
echo '正在下载服务端'
echo '==============================='

wget https://minecraft.azureedge.net/bin-linux/bedrock-server-1.20.12.01.zip

unzip bedrock-server-1.20.12.01.zip
./bedrock_server
