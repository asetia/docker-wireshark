# docker-wireshark

xhost local:root
xhost +local:docker
docker run wireshark

works on ubuntu 14.04 trusty, run with:

sudo docker pull asetia/docker-wireshark
sudo docker run -ti --net=host --privileged -v $HOME:/root:ro -e XAUTHORITY=/root/.Xauthority -e DISPLAY=$DISPLAY asetia/docker-wireshark

run to access command line:
docker run -t -i asetia/docker-wireshark /bin/bash