#!/bin/bash
# init nginx php5 host 
# create by yonh
# 2016-02-20

# Defining functions =================
check_result() {
    if [ $1 -ne 0 ]; then
        echo "Error: $2"
        exit $1
    fi
}

## generate password
# Defining functions  ============== end
apt-get update
#apt-get -y upgrade
#check_result $? 'apt-get upgrade failed'

# install 
apt-get install -y nginx php5-fpm php5-gd php5-curl php5-gd php5-mysql php5-redis
check_result $? 'apt-get install failed'

cp nginx/default /etc/nginx/sites-available/default
sed -i '/worker_connections/a\\tuse epoll;' /etc/nginx/nginx.conf
sed -i 's/listen = \/var\/run\/php5-fpm\.sock/listen = 127\.0\.0\.1:9000/g' /etc/php5/fpm/pool.d/www.conf


service nginx restart
service php5-fpm restart

