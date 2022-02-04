dbhost=$2
vmip=$1
db=$3
user=$4
pass=$5
mysql -uroot -proot <<MYSQL_SCRIPT
GRANT ALL PRIVILEGES ON ${db}.* TO '${user}'@'${vmip}' IDENTIFIED BY '${pass}';
FLUSH PRIVILEGES;
MYSQL_SCRIPT
