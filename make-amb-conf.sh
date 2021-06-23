#/bin/sh

sed -i "s/{{DB_HOST}}/$DB_HOST/g" automysqlbackup.conf
sed -i "s/{{DB_USERNAME}}/$DB_USERNAME/g" automysqlbackup.conf
sed -i "s/{{DB_PASSWORD}}/$DB_PASSWORD/g" automysqlbackup.conf
sed -i "s/{{DB_NAMES}}/$DB_NAMES/g" automysqlbackup.conf

mkdir -p /etc/automysqlbackup
mv automysqlbackup.conf /etc/automysqlbackup/
