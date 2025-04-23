
#!/bin/bash
apt update
apt install bird2 -y
apt install -y build-essential autoconf git flex bison m4 libssh-dev libncurses-dev libreadline-dev
cd
git clone https://gitlab.nic.cz/labs/bird.git -b v2.17
cd bird
autoreconf
./configure --prefix= --sysconfdir=/etc/bird --runstatedir=/var/run/bird
make && make install
rm -r /root/bird/
systemctl enable bird.service --now
systemctl restart bird.service
