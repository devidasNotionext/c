#!/bin/bash
source build/envsetup.sh
lunch r5-userdebug
./build.sh dist -j8
