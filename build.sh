#!/bin/bash
source build/envsetup.sh
lunch sdk_pc_x86_64-userdebug
make -j32
