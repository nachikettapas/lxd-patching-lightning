#!/bin/bash

# Basic update
sudo apt-get -y update
sudo apt-get -y upgrade  

# Bitcoin repository addition and installation
sudo apt-add-repository -y ppa:bitcoin/bitcoin && \
sudo apt-get -y update && \
sudo apt-get install -y bitcoin-qt bitcoind

# Lightning dependencies installation
sudo apt-get install -y \
 autoconf \
 automake \
 build-essential \
 git \
 libtool \
 libgmp-dev \
 libsqlite3-dev \
 python \
 python3 \
 net-tools \
 zlib1g-dev \
 libbase58-dev \
 jq

cd /tmp && /
wget "https://download.libsodium.org/libsodium/releases/LATEST.tar.gz" && \
tar -xvf ./LATEST.tar.gz && \
cd libsodium-stable && \
./configure && \
make && \
make check && \
sudo make install

# Lightning repo setup
cd /tmt && \
git clone https://github.com/ElementsProject/lightning.git && \
cd lightning && \
./configure && \
make

