#!/bin/bash

set -exu -o pipefail

cd $(dirname $0)

# MySQLコマンドを実行
sudo mysql -uroot -proot isuports -e "SET GLOBAL slow_query_log_file = '/var/log/mysql/mysql-slow.log';"
sudo mysql -uroot -proot isuports -e "SET GLOBAL long_query_time = 0;"
sudo mysql -uroot -proot isuports -e "SET GLOBAL slow_query_log = ON;"

sudo chmod +rx /var/log/nginx
sudo chmod +r /var/log/nginx/access.log
sudo chmod +rx /var/log/mysql
sudo chmod +r /var/log/mysql/mysql-slow.log
