FROM centos:6
MAINTAINER jerrylee <kofttlcc@gmail.com>
RUN yum -y update \
 && yum -y install wget; yum clean all
RUN wget -O install.sh http://download.bt.cn/install/install.sh \
 && printf "y\n0"|bash ./install.sh
ADD ./start.sh /start.sh
EXPOSE 21 22 80 443 888 3306 8888
CMD ["/start.sh"]
