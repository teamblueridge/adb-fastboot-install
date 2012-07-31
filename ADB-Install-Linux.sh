#!/bin/bash

#  ADB Install.sh
#  
#  This script installs adb and fastboot into usr/bin/
#  This may be run from anywhere and is compatible with Linux
#  and Mac OS X. Hopefully a Windows batch file will be available
#  very soon.
#
#  Created by kalaker on 04/20/2012
#  Updated by kalaker on 05/30/2012
#  http://forum.xda-developers.com/member.php?u=4510103 <-My XDA Profile
#  https://code.google.com/p/adb-fastboot-install <-Google Code Page
echo "This will install ADB and Fastboot on your computer."
echo "Root Permissions required. Please type your password."
sudo cd ~ #Gives Superuser permissions
cd "`dirname "$0"`" #CDs to script directory
echo "Installing JDK (Not really necessary, but helpful for future)."
sudo add-apt-repository ppa:sun-java-community-team/sun-java6; sudo apt-get update; sudo apt-get install sun-java6-jre sun-java6-bin sun-java6-jdk
echo "JDK Installed"
echo "Changed directory to `pwd`" #Informs user of path change
echo "Moving ADB"
sudo mv Linux/adb_Linux /usr/bin/adb #Moves adb
echo "ADB Moved to /usr/bin/adb"
echo "moving Fastboot"
sudo mv Linux/fastboot_Linux /usr/bin/fastboot #Moves Fastboot
echo "Fastboot moved to /usr/bin/fastboot"
echo "Installing rules"
sudo mv Linux/51-android.rules /etc/udev/rules.d/51-android.rules #Installs rules
echo "Rules installed"
echo "You may now run Android Debug Bridge and Fastboot commands"
echo "Have a nice day."