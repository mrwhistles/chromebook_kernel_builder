#!/bin/bash
rm -rf /usr/src/*
rm -rf /usr/src/*.*
bash /build/download-chromium-kernel.sh
bash /build/compile-chromium-kernel-deb.sh
cp -a /usr/*.deb /build/
