# docker-pgpool2

This Dockerfile will install pgpool2 and pgpooladmin.

Default users/passwords are docker/docker.

Connect to pgpoolAdmin using your web browser pointed at the port mapped to 80.
Connect your pg client to the port mapped to 9999.

Some settings you may wish to change:

* listen_addresses: to `*` so pgpool allows connections from anywhere
* enable_pool_hba: on so you can use md5 auth (using PG_REPL_USER/PG_REPL_PASS)

