#!/bin/sh

#apt-get update
apt-get update

#java install
apt-get install -y default-jre

#jmeter 3.2 download
wget http://mirror.nexcess.net/apache//jmeter/binaries/apache-jmeter-3.2.tgz
tar -xf apache-jmeter-3.2.tgz
mv apache-jmeter-3.2/ /usr/share
