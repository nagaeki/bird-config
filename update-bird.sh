#!/bin/bash
apt update
apt install -y build-essential autoconf git flex bison m4 libssh-dev libncurses-dev libreadline-dev
cd
rm -r bird
git clone https://gitlab.nic.cz/labs/bird.git -b v2.14
cd bird
autoreconf
./configure --prefix= --sysconfdir=/etc/bird --runstatedir=/var/run/bird
make && make install
systemctl restart bird
rm -r /root/bird/
