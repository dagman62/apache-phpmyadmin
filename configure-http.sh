#!/bin/bash

PREFIX=/usr/local/apache

./configure --prefix=${PREFIX} --enable-ssl --enable-proxy --enable-modules=all --enable-mods-shared=all --enable-module=so --enable-proxy-http --enable-proxy-balancer --enable-proxy-ajp --with-ssl --with-mpm=prefork --with-apr=${PREFIX}/bin/apr-1-config --with-apr-util=${PREFIX}/bin/apu-1-config --enable-cgi
