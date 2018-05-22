FROM zoobab/lede-17.01.0-rc2-r3131-42f3c1f-x86-64:latest

RUN opkg update
RUN opkg install freeradius2 freeradius2-utils freeradius2-mod-sql-pgsql pgsql-server pgsql-cli

ADD freeradius2 /etc/freeradius2
