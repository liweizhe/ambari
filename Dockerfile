FROM centos7/docker
MAINTAINER weizhe_li@outlook.com
RUN yum -y update && yum -y install openssl openssh-server openssh-clients && yum -y install net-tools\
    && yum install -y java-1.8.0-openjdk java-1.8.0-openjdk-devel && yum install -y wget && yum install -y which\
    && yum install -y gcc-c++ &&yum -y install rpm-build && yum install -y git
EXPOSE 80
CMD ["/sbin/init"]