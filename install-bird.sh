
#!/bin/bash
apt update
apt install -y build-essential autoconf git flex bison m4 libssh-dev libncurses-dev libreadline-dev
cd
git clone https://gitlab.nic.cz/labs/bird.git -b v2.13
cd bird
autoreconf
./configure --prefix= --sysconfdir=/etc/bird --runstatedir=/var/run/bird
make && make install
rm -r /root/bird/
wget https://github.com/nagaeki/bird-config/raw/main/bird.service -O /etc/systemd/system/bird.service
systemctl enable bird.service --now