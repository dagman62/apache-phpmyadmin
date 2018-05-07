#!/bin/bash

# lets create a mysql data named volume to be mounted by compose

docker create -v /var/lib/mysql --name mysqldata dagman62/mysql:5.7

# now lets run it

docker-compose up -d

