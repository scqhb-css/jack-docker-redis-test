FROM centos
MAINTAINER QINHAIBO
ENV REFRESHED_AT 2018-8-4
RUN yum update -y
RUN yum -y install wget
WORKDIR /etc/yum.repos.d/
RUN wget http://mirrors.aliyun.com/repo/epel-6.repo
RUN yum -y install redis
EXPOSE 8888
