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
addnode=217.77.13.196:19323
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