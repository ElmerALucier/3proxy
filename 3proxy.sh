apt-get update && apt-get -y upgrade
apt-get install -y build-essential make gcc unzip mc
wget https://github.com/z3APA3A/3proxy/archive/devel.zip
unzip devel.zip
cd 3proxy-*
echo "#define ANONYMOUS 1" >> src/proxy.h
make -f Makefile.Linux
cd src
mkdir /etc/3proxy/
mv 3proxy /etc/3proxy/
cd /etc/3proxy/
wget --no-check-certificate https://github.com/ElmerALucier/3proxy/raw/master/3proxy.cfg
chmod 600 /etc/3proxy/3proxy.cfg
cd /etc/init.d/
wget --no-check-certificate https://raw.github.com/ElmerALucier/3proxy/master/3proxy
chmod  +x /etc/init.d/3proxy
update-rc.d 3proxy defaults
