### old

#!/bin/bash

# compiled from https://docs.docker.com/engine/installation/linux/debian/#/debian-jessie-80-64-bit

sudo apt-get update
sudo apt-get dist-upgrade -y
sudo apt-get install apt-transport-https ca-certificates -y

sudo sh -c "echo deb https://apt.dockerproject.org/repo debian-jessie main > /etc/apt/sources.list.d/docker.list"
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D

sudo apt-get update
sudo apt-cache policy docker-engine
sudo apt-get install docker-engine -y --allow-unauthenticated


sudo service docker start
sudo docker run hello-world

sudo group add docker
sudo groupadd docker
sudo gpasswd -a $USER docker
sudo service docker restart


## new

sudo apt update
sudo apt upgrade
sudo apt install apt-transport-https ca-certificates curl software-properties-common gnupg2
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
sudo apt update
sudo apt install docker-ce
sudo systemctl status docker
docker -v
sudo usermod -aG docker $USER # If you want to run Docker commands as a non-root user without prepending sudo you’ll need to add your user to the docker group which is created during the installation of the Docker CE package. You can do that by typing
docker container run hello-world
