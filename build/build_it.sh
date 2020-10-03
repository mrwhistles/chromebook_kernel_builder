#!/bin/bash
bash download-chromium-kernel.sh
bash compile-chromium-kernel-deb.sh
cp -a /usr/*.deb /build/
