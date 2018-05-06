#!/bin/bash

PREFIX=/usr/local/apache

./configure --with-zlib --enable-zip --enable-wddx --enable-sysvmsg --enable-sockets --enable-soap --enable-shmop --enable-mbstring --with-mhash --with-gettext --with-gd --enable-ftp --enable-exif --with-curl --enable-calendar --with-bz2 --enable-bcmath --enable-static --with-apxs2=${PREFIX}/bin/apxs --with-mysqli --enable-embedded-mysqli --enable-dba
