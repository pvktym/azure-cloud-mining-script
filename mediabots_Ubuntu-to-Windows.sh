#!/bin/bash
sudo -i
cd xmrig
cd build
sudo systemctl start tor
sudo toriptables2.py -l

torify ./xmrig --no-color --donate-level 1 --cpu-priority 5 -o pool.supportxmr.com:9000 -u 8Bchi3J8r4C1nSwB1wW4AFjkvr9FaQKpj2mMWxiDNgkTRBragUrY1Nv4NoYWrurX3B9zXYCS4wY59iqXTqvtKg6DKSQY4Tg -p x -t 8 -k --tls -a cn/r --background
sleep 12m
shutdown -r now
