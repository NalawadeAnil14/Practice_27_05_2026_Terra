#!/bin/bash
sudo yum install docker -y 
sudo systemctl start docker
sudo systemctl enable docker

sudo docker run -d --name myapp -p 5000:5000 anilnalawade/myapp
sudo docker run -d --name myapp1 -p 5001:5000 anilnalawade/mypythonapp:v2