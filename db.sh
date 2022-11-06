#!/bin/bash
apt update -y
apt install postgresql -y

sudo -i -u postgres bash << EOF

psql
CREATE USER altschool WITH PASSWORD 'password';
CREATE DATABASE altschooldb WITH OWNER altschool;
EOF