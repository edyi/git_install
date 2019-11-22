#!/bin/sh
yum install -y wget make which
yum install -y sqlite-devel bzip2-devel xz-libs gcc g++ build-essential kernel-headers kernel-devel
cd /usr/local/src
wget https://www.kernel.org/pub/software/scm/git/git-2.24.0.tar.gz 
tar zxvf git-2.24.0.tar.gz
yum install -y gcc curl-devel expat-devel gettext-devel openssl-devel zlib-devel perl-ExtUtils-MakeMaker
cd git-2.24.0
make prefix=/usr/local all
make prefix=/usr/local install

git version
which git
