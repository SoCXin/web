FROM centos:centos7
MAINTAINER qitas <qitas@qitas.cn>
RUN yum -y update; yum clean all
RUN yum -y install epel-release; yum clean all
RUN yum -y install mariadb mariadb-server mariadb-client nginx php-fpm php-cli php-mysql php-gd php-imap php-ldap php-odbc php-pear php-xml php-xmlrpc php-magickwand php-magpierss php-mbstring php-mcrypt php-mssql php-shout php-snmp php-soap php-tidy php-apc pwgen python-setuptools curl git tar; yum clean all
ADD ./start.sh /start.sh
ADD ./nginx-site.conf /nginx.conf
RUN mv /nginx.conf /etc/nginx/nginx.conf
RUN rm -rf /usr/share/nginx/html/*
RUN /usr/bin/easy_install supervisor
RUN /usr/bin/easy_install supervisor-stdout
ADD ./supervisord.conf /etc/supervisord.conf
RUN echo %sudo ALL=NOPASSWD: ALL >> /etc/sudoers
ADD http://wordpress.org/latest.tar.gz /wordpress.tar.gz
RUN tar xvzf /wordpress.tar.gz
RUN mv /wordpress/* /usr/share/nginx/html/.
RUN chown -R apache:apache /usr/share/nginx/
RUN chmod 755 /start.sh
RUN mkdir /var/run/sshd
EXPOSE 80
EXPOSE 22
CMD ["/bin/bash", "/start.sh"]
