#!/bin/bash

#date : february 2023
#Author: paparazi
##description:install jenkins in centos7 

 yum install java-1.8.0-openjdk-devel
 curl --silent --location http://pkg.jenkins-ci.org/redhat-stable/jenkins.repo | sudo tee /etc/yum.repos.d/jenkins.rep
 sudo rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key
 sudo yum install jenkins
 sudo systemctl start jenkins
 systemctl status jenkins
 sudo firewall-cmd --permanent --zone=public --add-port=8080/tcp
 sudo firewall-cmd --reload

