FROM debian:latest

RUN apt-get update && \
    apt-get install -y wget unzip libssl-dev libevent-dev libboost-all-dev libdb5.3++ libminiupnpc-dev libzmq3-dev && \
    rm -rf /var/lib/apt/lists/*

RUN wget https://github.com/craftcoin2013/craftcoinV3/releases/download/v3.0.3/craftcoin_linux.zip -O /tmp/craftcoin.zip && \
    unzip /tmp/craftcoin.zip -d /usr/local/bin && \
    chmod +x /usr/local/bin/craftcoind /usr/local/bin/craftcoin-cli /usr/local/bin/craftcoin-tx && \
    rm /tmp/craftcoin.zip

RUN mkdir -p /root/.craftcoin
COPY craftcoin.conf /root/.craftcoin/craftcoin.conf

RUN ln -s ~/.craftcoin /root/.craftcoin/

EXPOSE 12123

CMD ["craftcoind", "-conf=/root/.craftcoin/craftcoin.conf", "-datadir=/root/.craftcoin", "-printtoconsole", "-reindex"]
