Connect to local postgres with socket file
----

Comment out the lines that allow connections over IP.

    # /Applications/db/PostgreSQL/9.1/data/pg_hba.conf
    # TYPE  DATABASE        USER            ADDRESS                 METHOD
    # "local" is for Unix domain socket connections only
    local   all             all                                     md5
    # IPv4 local connections:
    # host    all             all             127.0.0.1/32            md5
    # IPv6 local connections:
    # host    all             all             ::1/128                 md5

Find out where your client expects the socket file to be.

> Is the server running locally and accepting
connections on Unix domain socket "/var/pgsql_socket/.s.PGSQL.5432"?

Set `unix_socket_directory` to whatever your client wants.

    # /Applications/db/PostgreSQL/9.1/data/postgresql.conf
    listen_addresses = 'localhost'
    unix_socket_directory = '/var/pgsql_socket'
    unix_socket_permissions = 0777

Changing `unix_socket_directory` requires a restart.

    sudo su postgres
    pg_ctl -D/Applications/db/PostgreSQL/9.1/data restart
