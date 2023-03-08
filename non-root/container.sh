#!/bin/bash

source ../shell_setup.sh

echo ""
echo ""
p "docker run --rm nginx"
docker run --rm nginx &> /dev/null
pe "clear"
echo ""
echo ""
pe "docker run --user nginx --rm nginx" || true
pe "clear"
echo ""
echo ""
pe "cat Dockerfile"
pe "docker build . -t nginx:user"
pe "clear"
echo ""
echo ""
p "docker run --rm nginx:user"
docker run --rm nginx:user &> /dev/null
pe "clear"
echo ""
echo ""
p "docker run --rm nginxinc/nginx-unprivileged"
docker run --rm nginxinc/nginx-unprivileged &> /dev/null
