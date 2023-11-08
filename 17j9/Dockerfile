FROM        --platform=$TARGETOS/$TARGETARCH ibm-semeru-runtimes:open-17-jdk
RUN 				apt-get update -y \
&& apt-get install -y lsof curl ca-certificates openssl git tar sqlite3 unzip fontconfig libfreetype6 wget tzdata iproute2 libstdc++6 \
						&& useradd -d /home/container -m container
USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container
COPY        ./entrypoint.sh /entrypoint.sh
CMD         [ "/bin/bash", "/entrypoint.sh" ]
