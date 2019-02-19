#!/bin/bash -eux

# Updating and Upgrading dependencies
apt-get update -y
apt-get upgrade -y

# Install some system packages
apt-get -y install python3 python-pip python-setuptools git python-dev

# Install gnupg
pip install gnupg

# Install enum34
pip install enum34

# Install things for mocking thing
pip install tox
pip install pipenv
pip install dill

# Install pycharm
apt-get -y install snapd
snap install pycharm-community --classic

# External tools
sudo python -m pip install flake8
sudo pip install bandit
sudo pip install pylint