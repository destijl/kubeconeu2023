#!/bin/bash

source ../shell_setup.sh

echo ""
echo ""
pe "docker run --rm -it -p 8080:80 nginx"
pe "clear"
echo ""
echo ""
pe "docker run --user nginx --rm -it -p 8080:80 nginx" || true
pe "clear"
echo ""
echo ""
pe "cat Dockerfile"
pe "docker build . -t nginx:user"
pe "clear"
echo ""
echo ""
pe "docker run --user nginx --rm -it -p 8080:80 nginx:user"
pe "clear"
echo ""
echo ""
pe "docker run --rm -it -p 8080:8080 nginxinc/nginx-unprivileged"
