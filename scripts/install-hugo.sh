#! /bin/bash

wget https://github.com/gohugoio/hugo/releases/download/v0.104.1/hugo_extended_0.104.1_Linux-64bit.tar.gz
tar zxvf hugo_extended_0.104.1_Linux-64bit.tar.gz
mv hugo /usr/local/bin
cd ~/
hugo version