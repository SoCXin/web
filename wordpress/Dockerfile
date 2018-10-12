
FROM wordpress:latest

LABEL author="qitas"
MAINTAINER qitas <qitas@qitas.cn>

# run shell
ADD ./run.sh /run.sh
RUN chmod +x /run.sh

EXPOSE 80

CMD ["/bin/bash","./run.sh"]

RUN echo "your docker-wordpress image is ready."