#!/bin/bash

DRIVER="overlay"
NETWORK="druid-net"

start() {

    echo "Creating $DRIVER docker network $NETWORK..."
    docker network rm $NETWORK
    docker network create -d $DRIVER --attachable $NETWORK
    
}

start