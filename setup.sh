chown -R www-data .
chmod 755 /usr/local/bin/pgpool
chmod 755 /usr/local/bin/pcp_*
chmod 777 templates_c
chmod 644 conf/pgmgt.conf.php
cp /usr/local/etc/pgpool.conf.sample /usr/local/etc/pgpool.conf
cp /usr/local/etc/pcp.conf.sample /usr/local/etc/pcp.conf
chown -R www-data /usr/local/etc
echo ${PCP_USER}:`pg_md5 ${PCP_PASS}` >> /usr/local/etc/pcp.conf
mkdir /var/run/pgpool
chown www-data /var/run/pgpool
rm -rf /var/www/install
cd /usr/local/etc
pg_md5 -m -u $PG_REPL_USER $PG_REPL_PASS
chown www-data pool_passwd
