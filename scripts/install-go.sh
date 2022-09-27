#! /bin/bash

wget https://go.dev/dl/go1.19.1.linux-amd64.tar.gz
sudo tar -C /usr/local/ -xzf go1.19.1.linux-amd64.tar.gz
cd /usr/local/
echo $PATH
sudo nano $HOME/.profile
export PATH=$PATH:/usr/local/go/bin
source $HOME/.profile
cat $HOME/.profile
go version