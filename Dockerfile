FROM wordpress:latest

LABEL author="qitas"
MAINTAINER qitas <qitas@qitas.cn>

# run shell
ADD ./web.sh /web.sh
RUN chmod +x /web.sh

EXPOSE 80

CMD ["/bin/bash","./web.sh"]

RUN echo "your docker-wordpress image is ready."