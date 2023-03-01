cd /root/bird-config
git fetch
git reset --hard HEAD
git merge origin/main
cp /root/bird-config/bird.conf /etc/bird/bird.conf
cp /root/bird-config/dn42/main.conf /etc/bird/dn42/main.conf
cp /root/bird-config/dn42/functions.conf /etc/bird/dn42/functions.conf
cp /root/bird-config/dn42/templates.conf /etc/bird/dn42/templates.conf
cp /root/bird-config/global_check.conf /etc/bird/global_check.conf
birdc c
