#!/bin/bash

#  ADB Uninstall.sh
#  
#  This script works on Linux and Mac OS X.
#  This script removed adb and fastboot from usr/bin/
#
#  Created by kalaker on 4/21/12.
echo "About to removed ADB and Fastboot"
echo "We're accessing protected directories, please type your password."
sudo rm /usr/bin/adb #Removes adb
echo "ADB removed"
sudo rm /usr/bin/fastboot #Removes fastboot
echo "Fastboot removed"
echo "Removing rules"
sudo rm /etc/udev/rules.d/51-android.rules #Removes rules
echo "If you're on a Mac and that last line was an error, it's okay."
echo "Rules removed"
echo "ADB and Fastboot have been successfully removed."
echo "Have a nice day!"