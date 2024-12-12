# CraftCoin node

## Prerequisites Docker
1. Use ubuntu linux or a similar distribution
2. Install craftcoin node and have it fully synced (recommanded way is [run a craftcoin node inside a docker container](https://github.com/toregua/craftcoin-node))
3. Install docker and docker-compose (Ubuntu)[https://docs.docker.com/engine/install/ubuntu/]
4. Clone this repository using git clone
5. Navigate inside the cloned repository folder (craftcoin-node)

## Config
fit craftcoin.conf for your need

Important parameters are the following : 

`txindex` must be set to 1 to have all transactions details with scripSign information

`rpcuser`, `rpcpassword` & `rpcport` are defining your rpc configuration (http://user:pass@127.0.0.1:22555 for example)

`rpcworkqueue` define the number of working queues (depending on your host machine performance)

`rpcbind` bind to given address to listen for JSON-RPC connections.

`rpcallowip` idealy set your server IP here (if you want to have a public node you have to set 0.0.0.0/0 but you will be expose to node attacks)

`printtoconsole` this parameter help you a lot with docker to redirect the output to console (i recommand to enable it)

To help node sync you can add specific nodes manually like these ones : 

```shell
addnode=45.8.132.173:12123
addnode=45.8.132.173:12123
addnode=37.27.61.28:12123
addnode=95.216.96.141:12123
addnode=65.21.69.190:12123
addnode=176.9.137.82:12123
addnode=37.27.112.228:12123
addnode=107.189.18.92:12123
addnode=38.242.159.183:12123
addnode=155.133.22.187:12123
addnode=139.84.132.19:12123
addnode=103.133.25.197:12123
addnode=90.89.170.145:12123
addnode=24.200.174.9:12123
addnode=37.27.62.86:12123
addnode=170.203.205.58:12123
addnode=102.191.9.192:12123
addnode=149.50.101.189:12123
addnode=88.80.26.2:12123
addnode=104.0.129.122:12123
addnode=87.2.222.185:12123
addnode=217.77.13.196:12123
addnode=91.148.241.114:12123
addnode=66.27.115.194:12123
addnode=103.165.229.114:12123
addnode=222.252.67.173:12123
addnode=202.125.100.127:12123
addnode=113.179.50.177:12123
addnode=91.151.137.41:12123
addnode=183.81.124.237:12123
addnode=115.77.217.44:12123
addnode=179.61.147.131:12123
addnode=78.135.85.110:12123
```

## Usage
Just run

```shell
    docker-compose up -d
```
## Logs
```shell
    docker-compose logs -f --tail 200
```

Wait until you see log like this : 
```shell
craftcoin-node_1  | 2024-11-08 15:02:57 UpdateTip: new best=4a77fa4e5a7b8e06847f1da47181685284642eac366c4730b808e686d669ce65 height=173484 version=0x20130004 log2_work=67.340335 tx=479399 date='2024-11-08 15:02:55' progress=1.000000 cache=0.0MiB(101tx)
```

A progress with 1.000000 mean 100% synced