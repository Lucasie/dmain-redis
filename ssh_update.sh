#!/bin/bash
echo "update start"

wget https://mirror.leaseweb.com/pub/OpenBSD/OpenSSH/portable/openssh-8.8p1.tar.gz

# cd ssh_update/
tar -zxvf openssh-8.8p1.tar.gz 
# tar -zxvf yum.tar.gz

#  cd /var/cache/yum/
# rm -rf *
# mv /root/ssh_update/x86_64/ .
cd /root/openssh-8.8p1/
yum -y install autoconf
yum -y install automake
yum -y install zlib-devel
yum -y install openssl-devel
autoconf
./configure
make install
echo "update end"
