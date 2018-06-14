#!/bin/bash

echo "Apache & Memcached Installation and Initialization"
vagrant reload
vagrant provision

echo "Login to Vagrant Container and Checking Apache"
vagrant ssh
ps -ef | grep -i apache
ps -ef | grep -i memcached

