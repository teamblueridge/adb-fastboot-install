#!/bin/bash

#  ADB Install.sh
#  
#  This script installs adb and fastboot into usr/local/bin/
#  This may be run from anywhere and is compatible with Linux
#  and Mac OS X. Hopefully a Windows batch file will be available
#  very soon.
#
#  Created by kalaker on 04/20/2012
#  Updated by kalaker on 04/03/2014
#  http://forum.xda-developers.com/member.php?u=4510103 <-My XDA Profile
#  https://github.com/teamblueridge/adb-fastboot-install <-GitHub Page
install_path=/usr/local/bin
echo "This will install ADB and Fastboot on your computer."
echo "Root Permissions required. Please type your password."
sudo cd ~ #Gives Superuser permissions
cd "`dirname "$0"`" #CDs to script directory
echo "Installing JDK (Not really necessary, but helpful for future)."
echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
sudo add-apt-repository ppa:webupd8team/java; sudo apt-get update; sudo apt-get install oracle-java6-installer
echo "JDK Installed"
echo "Changed directory to `pwd`" #Informs user of path change
echo "Moving ADB"
sudo cp Linux/adb_Linux $install_path/adb #Moves adb
sudo chmod 777 $install_path/adb #Allows to be executable
echo "ADB Moved to $install_path/adb"
echo "moving Fastboot"
sudo cp Linux/fastboot_Linux $install_path/fastboot #Moves Fastboot
sudo chmod 777 $install_path/fastboot #Allows to be executable
echo "Fastboot moved to $install_path/fastboot"
echo "Installing rules"
sudo cp Linux/51-android.rules /etc/udev/rules.d/51-android.rules #Installs rules
echo "Rules installed"
echo "Ubuntu Specific. If there is an error, don't worry. Please input password when prompted."
sudo service udev restart
echo "You may now run Android Debug Bridge and Fastboot commands"
echo "Have a nice day."
