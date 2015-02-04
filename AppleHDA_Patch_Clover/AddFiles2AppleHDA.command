#!/bin/bash

# This script is used for copy files need for Clover KextPatch function to patch the AppleHDA
# for ALC269 on Lenovo Y450
# Author: Delta(linzhouyu)

# Usage: 
# 0. Make sure that the config.plist, DSDT and FakeSMC.kext have been modified correctly.
# 1. Extract this script and two required files to any location which doesn't contain any "space" in its path name.
# 2. Double click or use Terminal to run this script.
# 3. Be aware of the outputs, if everything is fine, reboot your computer.

cd `dirname $0`
TARGET_PATH="/System/Library/Extensions/AppleHDA.kext/Contents/Resources"
sudo cp layout86.xxx.zlib Platforms.xxx.zlib $TARGET_PATH

echo "Setting permissions..."
sudo chown root:wheel $TARGET_PATH/layout86.xxx.zlib
sudo chown root:wheel $TARGET_PATH/Platforms.xxx.zlib
sudo chmod 644 $TARGET_PATH/layout86.xxx.zlib
sudo chmod 644 $TARGET_PATH/Platforms.xxx.zlib
sudo xattr -d com.apple.quarantine $TARGET_PATH/layout86.xxx.zlib
sudo xattr -d com.apple.quarantine $TARGET_PATH/Platforms.xxx.zlib
echo "Done."

echo "Rebuilding kernel cache..."
sudo touch /System/Library/Extensions
sudo kextcache -update-volume /

