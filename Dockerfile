FROM centos:7
ENV container docker
RUN (cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == \
systemd-tmpfiles-setup.service ] || rm -f $i; done); \
rm -f /lib/systemd/system/multi-user.target.wants/*;\
rm -f /etc/systemd/system/*.wants/*;\
rm -f /lib/systemd/system/local-fs.target.wants/*; \
rm -f /lib/systemd/system/sockets.target.wants/*udev*; \
rm -f /lib/systemd/system/sockets.target.wants/*initctl*; \
rm -f /lib/systemd/system/basic.target.wants/*;\
rm -f /lib/systemd/system/anaconda.target.wants/*;
VOLUME [ "/sys/fs/cgroup" ]
CMD ["/usr/sbin/init"]
MAINTAINER jerrylee <kofttlcc@gmail.com>
RUN yum -y update \
 && yum -y install wget; yum clean all
RUN wget -O install.sh http://download.bt.cn/install/install.sh \
 && printf "y\n0"|bash ./install.sh
ADD ./start.sh /start.sh
EXPOSE 21 22 80 443 888 3306 8888
