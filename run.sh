#!/bin/bash
docker run -d -p 9999:80 -v $PWD:/usr/src/app simple-server-node:latest
