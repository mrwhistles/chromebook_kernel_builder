#!/bin/bash
cd /usr/src
make oldconfig
export cpuThreads=$(( $(nproc) + 1 ))
make deb-pkg -j$cpuThreads

