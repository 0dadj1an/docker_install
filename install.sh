


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


# jenkins how to



sudo mkdir /var/jenkins_home
sudo chown 1000:1000 /var/jenkins_home
docker pull jenkins jenkins/jenkins:lts
docker run -d -v /var/jenkins_home:/var/jenkins_home:z -p 8080:8080 -p 50000:50000 --name myjenkins jenkins/jenkins:lts
docker update --restart=always 0576df221c0b

