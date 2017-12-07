FROM centos:7.4
MAINTAINER jerrylee <kofttlcc@gmail.com>
RUN yum -y update \
 && yum -y install wget; yum clean all
RUN echo 'root:Abc123456' | chpasswd
RUN wget -O install.sh http://download.bt.cn/install/install.sh && sh install.sh
ADD ./start.sh /start.sh
EXPOSE 21 22 80 443 888 3306 8888
CMD bash start.sh
