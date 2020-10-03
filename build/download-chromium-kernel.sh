#!/bin/bash
git clone -b release-R72-11316.B-chromeos-4.4 https://chromium.googlesource.com/chromiumos/third_party/kernel /usr/src/
wget https://github.com/megabytefisher/eve-linux-hacks/raw/master/eve-custom.config -O /usr/src/.config
