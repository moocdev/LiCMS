#!/usr/bin/env sh

# Update the `apt` package index:
apt-get update -y && apt-get upgrade -y && apt-get dist-upgrade -y

# Install packages to allow `apt` to use a repository over HTTPS:
apt-get install \
  apt-transport-https \
  ca-certificates \
  curl \
  gnupg-agent \
  software-properties-common -y

# Add Docker’s official GPG key:
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
apt-key fingerprint 0EBFCD88

add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Update the `apt` package index:
apt-get update -y && apt-get upgrade -y && apt-get dist-upgrade -y

# Install the latest version of Docker Engine - Community and containerd
apt-get install docker-ce docker-ce-cli containerd.io python3 python3-pip -y

apt-get install unzip docker-compose -y

return
