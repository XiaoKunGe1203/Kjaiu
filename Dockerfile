FROM ubuntu:18.04
RUN apt-get update && apt-get install -y curl ca-certificates openssl tar bash fontconfig wget unzip && adduser --disabled-password --home /home container && mkdir container && ls

USER container
ENV  USER=container HOME=/home/container

WORKDIR /home/container

COPY ./entrypoint.sh /entrypoint.sh

CMD ["/bin/bash", "/entrypoint.sh"]
