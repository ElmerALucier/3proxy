yum update && yum -y install wget gcc mc net-tools unzip
wget https://github.com/z3APA3A/3proxy/archive/devel.zip
unzip devel.zip
cd 3proxy-*
ln -s /usr/lib64/libcrypto.so.10 /usr/lib/libcrypto.so
ln -s /usr/lib64/libssl.so.10 /usr/lib/libssl.so
echo "#define ANONYMOUS 1" >> src/proxy.h
make -f Makefile.Linux

mkdir /usr/local/etc/3proxy
mkdir /usr/local/etc/3proxy/bin
mkdir /usr/local/etc/3proxy/logs
mkdir /usr/local/etc/3proxy/stat

cp src/3proxy /usr/local/etc/3proxy/bin
cp ./scripts/rc.d/proxy.sh /etc/init.d/3proxy
chown -R root /usr/local/etc/3proxy
chmod +x /etc/init.d/3proxy

cd /usr/local/etc/3proxy/bin
wget --no-check-certificate https://github.com/ElmerALucier/3proxy/raw/master/3proxy.cfg
chmod 600 3proxy.cfg
