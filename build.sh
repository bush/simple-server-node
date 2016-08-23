#!/bin/bash

cp Dockerfile.template Dockerfile.tmp
sed -i '' -e 's/resin\/%%RESIN_MACHINE_NAME%%-//' Dockerfile.tmp
docker build -t simple-server-node -f Dockerfile.tmp .
