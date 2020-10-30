#!/bin/bash

sudo mkdir -p /usr/local/man/man1
sudo cp ./rpwd.1 /usr/local/man/man1
sudo gzip /usr/local/man/man1/rpwd.1
sudo mandb

sudo mkdir -p /usr/local/rpwd
sudo cp -r ./bin /usr/local/rpwd/bin

if [ -f ~/.zshrc ]; then
	echo 'export PATH="/usr/local/rpwd/bin:$PATH"' >> ~/.zshrc
elif [ -f ~/.bashrc ]; then
	echo 'export PATH="/usr/local/rpwd/bin:$PATH"' >> ~/.bashrc
fi
