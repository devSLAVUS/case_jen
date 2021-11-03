#!/bin/bash
docker pull devslavus/my-first-blog
docker run --name mfb -d -p 80:80 my-first-blog:latest
