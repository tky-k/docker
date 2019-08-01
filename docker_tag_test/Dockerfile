FROM centos:7

RUN yum -y install lvm2 device-mapper device-mapper-persistent-data device-mapper-event device-mapper-libs device-mapper-event-libs
RUN yum -y install wget
RUN wget https://download.docker.com/linux/centos/docker-ce.repo -O /etc/yum.repos.d/docker-ce.repo
RUN yum -y install docker-ce

CMD [ "/bin/bash" ]