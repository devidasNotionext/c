#!/bin/bash
source build/envsetup.sh
lunch sdk_pc_x86_64-userdebug
./build.sh dist -j8
