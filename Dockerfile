FROM ubuntu:trusty

RUN apt-get update
RUN apt-get -y install wireshark

CMD ["wireshark"]