#!/bin/bash
cd kernel
make oldconfig
export cpuThreads=$(( $(nproc) + 1 ))
make deb-pkg -j$cpuThreads

