#!/bin/bash

# setup

source ../shell_setup.sh

systemctl stop docker

dockerd --userns-remap=default &

# demo

docker rm -f $(docker ps -aq) &> /dev/null

pe "docker run --name userns -d gcr.io/vinaygo-gke-dev/coredns:v1.0.0 /coredns"

echo ""

pe "docker exec userns ps -aux"

echo ""

pe 'ps -C "coredns" -o user,uid,cmd'

pe "clear"

# cleanup

docker rm -f $(docker ps -aq)

docker rmi $(docker images -q)

killall dockerd -v

sudo systemctl start docker