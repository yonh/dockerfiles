FROM ubuntu:14.04
# Install modules
COPY sources.list.trusty /etc/apt/sources.list

RUN apt-get update && apt-get install -y nginx php5-fpm php5-gd php5-curl php5-gd php5-mysql php5-redis

ADD default /etc/nginx/sites-available/default


RUN sed -i '/worker_connections/a\\tuse epoll;' /etc/nginx/nginx.conf
RUN sed -i 's/listen = \/var\/run\/php5-fpm\.sock/listen = 127\.0\.0\.1:9000/g' /etc/php5/fpm/pool.d/www.conf

EXPOSE 80

ADD run.sh /run.sh
RUN chmod +x /run.sh

RUN userdel www-data && useradd www-data

CMD ["/run.sh"]

