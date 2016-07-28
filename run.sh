#!/usr/bin/env bash

open -a xquartz
#brew install socat
socat TCP-LISTEN:6000,reuseaddr,fork UNIX-CLIENT:\"$DISPLAY\"
sudo docker run --net=host --privileged -e DISPLAY=192.168.99.1:0 wireshark