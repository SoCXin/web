FROM mariadb:latest
LABEL author="qitas"
MAINTAINER qitas <qitas@qitas.cn>

# db shell
ADD ./db.sh /db.sh
RUN chmod +x /db.sh

EXPOSE 3306

CMD ["/bin/bash","./db.sh"]

RUN echo "your docker-mariadb image is ready."