#!/bin/bash
bash /build/download-chromium-kernel.sh
bash /build/compile-chromium-kernel-deb.sh
cp -a /usr/*.deb /build/
