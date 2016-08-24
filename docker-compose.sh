#!/bin/bash
npm install --production --unsafe-perm && npm cache clean
sed -e 's/resin\/%%RESIN_MACHINE_NAME%%-node:slim/node:6.3.1-slim/' Dockerfile.template > Dockerfile.tmp
npm install
#docker build -t simple-server-node -f Dockerfile.tmp .
docker-compose up -d
