#!/bin/bash -eux

# Updating and Upgrading dependencies
sudo apt-get update -y
sudo apt-get upgrade -y

# Install some system packages
sudo apt-get -y install python3 python-pip python-setuptools python3-distutils git python-dev

# Install gnupg
sudo pip install gnupg

# Install enum34
sudo pip install enum34

# Install things for mocking thing
sudo pip install tox
sudo pip install pipenv
sudo pip install dill

# Install pycharm
sudo apt-get -y install snapd
snap install pycharm-community --classic

# External tools
sudo python -m pip install flake8
sudo pip install bandit
sudo pip install pylint

# docker
sudo apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu xenial stable"
sudo apt-get update -y
sudo apt-get -y install docker-ce docker-ce-cli containerd.io
sudo usermod -aG docker $USER

# tsocks
sudo apt-get install tsocks
echo "server = 127.0.0.1" >> ~/.tsocks
echo "server_port = 10922" >> ~/.tsocks
echo "export TSOCKS_CONF_FILE=/home/$USER/.tsocks" >> ~/.bashrc
echo "export PATH=\"$PATH:$TSOCKS_CONF_FILE\"" >> ~/.bashrc
source ~/.bashrc