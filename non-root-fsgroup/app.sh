#!/bin/bash

set -eux

ls -ld /etc/srv/kubernetes/konnectivity-server

touch /etc/srv/kubernetes/konnectivity-server/konnectivity-server.socket

sleep infinity