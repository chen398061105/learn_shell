yum -y install wget gcc pcre-devel zlib-devel
wget https://nginx.org/download/nginx-1.16.1.tar.gz
tar xf nginx-1.16.1.tar.gz
cd nginx-1.16.1
./configure --prefix=/user/local/nginx
make -j 1
make install
