#!/bin/bash

# General tools
apt-get update -y
apt install -y wget less zsh tmux mc micro

# Overmind to run Procfiles
wget -O /tmp/overmind.gz https://github.com/DarthSim/overmind/releases/download/v2.2.2/overmind-v2.2.2-linux-amd64.gz
gunzip /tmp/overmind.gz
mv /tmp/overmind /usr/local/bin/overmind
chmod +x /usr/local/bin/overmind
