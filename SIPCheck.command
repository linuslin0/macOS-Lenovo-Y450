#!/bin/sh
#
# This script will load SIPCheck.kext to check the status 
# of all security mechanisms provided by SIP/Rootless.
# Auther: Delta (Linus)
#
# Requirements
# 1. OS X 10.11
# 2. Already allowed to load "untrusted" kexts
#
# Usage:
# 1. Double click or use Terminal to run this script.
# 2. Enter password for current user.
# 3. Check output infomation in the Terminal.
#

SYS_VER=`sw_vers -productVersion`

# check system version
case ${SYS_VER} in
10.11* ) SYS_NAME="El Capitan"
I;;
10.10* ) SYS_NAME="Yosemite"
;;
* )
echo "OS X Version: $SYS_VER is not supported"
exit 1
;;
esac

# download kext
URL="https://raw.githubusercontent.com/linzhouyu/OS-X-Lenovo-Y450/master/SIPCheck.kext.zip"
WORK_DIR="/Users/`whoami`"
sudo curl -o $WORK_DIR/SIPCheck.kext.zip $URL
if [ "$?" != "0" ]; then
	echo "ERROR: Download failed, please check network."
	exit 1
fi
unzip -qu $WORK_DIR/SIPCheck.kext.zip -d $WORK_DIR

echo ""

# load kext and capture the kernel log
sudo chown -R root:wheel $WORK_DIR/SIPCheck.kext
sudo kextload $WORK_DIR/SIPCheck.kext
sleep 2
sudo kextunload $WORK_DIR/SIPCheck.kext
syslog -F '$(Sender)[$(PID)]: $Message' -k Sender kernel -k Time ge -1m | grep Y450

# Clean...
rm -f $WORK_DIR/SIPCheck.kext.zip
sudo rm -rf $WORK_DIR/SIPCheck.kext
echo ""

exit
