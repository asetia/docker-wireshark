# docker-wireshark


Run Wireshark within a Docker Container

Tested on OSX: (run.sh)

  Open XQuartz for display connection

    open -a xquartz

  Expose XQuartz socket file (not in xterm)

    socat TCP-LISTEN:6000,reuseaddr,fork UNIX-CLIENT:\"$DISPLAY\"

  (If socat is not available, install using brew or similar: brew install socat)

  Run container with necessary privileges

    sudo docker run --net=host --privileged -e DISPLAY=192.168.99.1:0 asetia/wireshark


Tested on Ubuntu 14.04:

    sudo docker pull asetia/docker-wireshark

    sudo docker run -ti --net=host --privileged -v $HOME:/root:ro -e XAUTHORITY=/root/.Xauthority -e DISPLAY=$DISPLAY asetia/docker-wireshark


Run to access command line:

    docker run -t -i asetia/docker-wireshark /bin/bash
