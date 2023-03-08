#!/bin/bash

source ../shell_setup.sh

echo ""
echo ""
pe "docker run --rm nginx"
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
pe "docker run --rm nginx:user"
pe "clear"
echo ""
echo ""
pe "docker run --rm nginxinc/nginx-unprivileged"
