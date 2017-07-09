#!/bin/sh

#apt-get update
apt-get update

#java install
apt-get install -y default-jre

#jmeter 3.2 download
wget http://mirror.nexcess.net/apache//jmeter/binaries/apache-jmeter-3.2.tgz
tar -xf apache-jmeter-3.2.tgz
mv apache-jmeter-3.2/ /usr/share

#jmeter properties adjustment
sed -i 's/#server.rmi.localport/server.rmi.localport/g' /usr/share/apache-jmeter-3.2/bin/jmeter.properties

sh /usr/share/apache-jmeter-3.2/bin/jmeter.sh -s &
