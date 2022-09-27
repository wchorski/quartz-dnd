#! /bin/bash

wget https://go.dev/dl/go1.19.1.linux-amd64.tar.gz
tar -C /usr/local/ -xzf go1.19.1.linux-amd64.tar.gz
cd /usr/local/
echo $PATH
echo "export PATH=$PATH:/usr/local/go/bin" >> $HOME/.profile
. $HOME/.profile
cat $HOME/.profile
go version