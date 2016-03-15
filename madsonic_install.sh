#!/bin/bash

# apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C2518248EEA14886
echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections

apt-get update
apt-get install -y --no-install-recommends software-properties-common
add-apt-repository ppa:webupd8team/java
apt-get --purge -y autoremove software-properties-common
apt-get update

apt-get install -y wget
wget -O /tmp/madsonic.deb http://madsonic.org/download/6.1/20160304_madsonic-6.1.8120.deb
apt-get --purge autoremove -y wget

apt-get install -y oracle-java8-installer
dpkg -i /tmp/madsonic.deb


# clean up
rm /tmp/madsonic.deb
