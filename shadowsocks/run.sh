#!/bin/sh

timeout=$ENV_TIMEOUT
pass=$ENV_PASS
method=$ENV_METHOD

cd /opt

sed -i "s/{pass}/$pass/g" config.example
sed -i "s/{method}/$method/g" config.example
sed -i "s/{timeout}/$timeout/g" config.example

cp config.example config

ssserver -c /opt/config
