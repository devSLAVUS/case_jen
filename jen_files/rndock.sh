#!/bin/bash
echo $USERNAME 
echo $PASSWORD
docker login --username $USERNAME --password $PASSWORD
docker pull devslavus/my-first-blog
docker run --name mfb -d -p 80:80 my-first-blog:latest
