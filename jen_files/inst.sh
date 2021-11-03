#!/bin/bash
name="git"
I=`dpkg -s $name | grep "Status" `
if [ -n "$I" ]
then
   echo $name" installed"
else
   echo $name" not installed"
   apt update
   apt install -y git
fi
name="docker-ce"
I=`dpkg -s $name | grep "Status" `
if [ -n "$I" ]
then
   echo $name" installed"
else
   echo $name" not installed"
   apt install -y apt-transport-https
   curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
   add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_rele$
   apt update
   apt install docker-ce
fi