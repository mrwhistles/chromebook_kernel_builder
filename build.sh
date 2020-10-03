#!/bin/bash
docker stop coskernel
docker rm coskernel
docker run -v $PWD/build/:/build --name coskernel --detach coskernel:2.1
docker logs coskernel -f
docker stop coskernel
docker rm coskernel

