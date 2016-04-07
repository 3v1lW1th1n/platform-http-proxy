#!/bin/bash
set -e

# write out docker host as alias into /etc/hosts
echo $(ip route | awk '/default/ { print $3 }') protonet >> /etc/hosts

httpd-foreground
