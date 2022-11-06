#!/bin/bash

echo "updating apt "
apt update -y

echo "installing postgres"
apt install postgresql -y

sudo -i -u postgres bash << EOF
echo "In"
echo "creating user"
echo "creating database altschooldb"
psql
CREATE USER altschool WITH PASSWORD 'password';
CREATE DATABASE altschooldb WITH OWNER altschool;
EOF