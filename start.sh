#!/bin/bash
__check() {
if [ -f /usr/share/nginx/html/wp-config.php ]; then
exit
fi
}
__create_user() {
# 创建用于 SSH 登录的用户
SSH_USERPASS=`pwgen -c -n -1 8`
useradd -G wheel user
echo user:$SSH_USERPASS | chpasswd
echo ssh user password: $SSH_USERPASS
}
__mysql_config() {
# 启用并运行 MySQL
yum -y erase mariadb mariadb-server
rm -rf /var/lib/mysql/ /etc/my.cnf
yum -y install mariadb mariadb-server
mysql_install_db
chown -R mysql:mysql /var/lib/mysql
/usr/bin/mysqld_safe &
sleep 10
}
__handle_passwords() {
# 随机密码(pwgen)用于mysql 用户
WORDPRESS_DB="wordpress"
MYSQL_PASSWORD=`pwgen -c -n -1 12`
# 用于 wp-config.php 的随机密钥
WORDPRESS_PASSWORD=`pwgen -c -n -1 12`
# 这是在日志中显示的密码。
echo mysql root password: $MYSQL_PASSWORD
echo wordpress password: $WORDPRESS_PASSWORD
echo $MYSQL_PASSWORD > /mysql-root-pw.txt
echo $WORDPRESS_PASSWORD > /wordpress-db-pw.txt
# 这里原来是一个包括 sed、cat、pipe 和 stuff 的很长的行，但多亏了
#  @djfiander 的 https://gist.github.com/djfiander/6141138
# 现在没有了
sed -e "s/database_name_here/$WORDPRESS_DB/
s/username_here/$WORDPRESS_DB/
s/password_here/$WORDPRESS_PASSWORD/
/'AUTH_KEY'/s/put your unique phrase here/`pwgen -c -n -1 65`/
/'SECURE_AUTH_KEY'/s/put your unique phrase here/`pwgen -c -n -1 65`/
/'LOGGED_IN_KEY'/s/put your unique phrase here/`pwgen -c -n -1 65`/
/'NONCE_KEY'/s/put your unique phrase here/`pwgen -c -n -1 65`/
/'AUTH_SALT'/s/put your unique phrase here/`pwgen -c -n -1 65`/
/'SECURE_AUTH_SALT'/s/put your unique phrase here/`pwgen -c -n -1 65`/
/'LOGGED_IN_SALT'/s/put your unique phrase here/`pwgen -c -n -1 65`/
/'NONCE_SALT'/s/put your unique phrase here/`pwgen -c -n -1 65`/" /usr/share/nginx/html/wp-config-sample.php > /usr/share/nginx/html/wp-config.php
}
__httpd_perms() {
chown apache:apache /usr/share/nginx/html/wp-config.php
}
__start_mysql() {
# systemctl 启动 mysqld 服务
mysqladmin -u root password $MYSQL_PASSWORD
mysql -uroot -p$MYSQL_PASSWORD -e "CREATE DATABASE wordpress; GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpress'@'localhost' IDENTIFIED BY '$WORDPRESS_PASSWORD'; FLUSH PRIVILEGES;"
killall mysqld
sleep 10
}
__run_supervisor() {
supervisord -n
}
# 调用所有函数
__check
__create_user
__mysql_config
__handle_passwords
__httpd_perms
__start_mysql
__run_supervisor

