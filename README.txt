Contents & Description
Mac OS X
On Mac OS X this script installs ADB and Fastboot to /usr/bin/ on Mac OS X. You can uninstall using the Uninstall ADB.sh script provided.

Linux
On Linux, this will install ADB and Fastboot to /usr/bin, installs 51-android.rules, and installs the Java JDK. You can uninstall using the Uninstall ADB.sh script provided.

Windows
Windows support is currently not available, but hopefully will be soon.



How to run
Mac OS X
Run ADB Install Mac.sh from Terminal (/Applications/Utilities/Terminal.app) and then restart Terminal. If you wish to uninstall, simply run Uninstall ADB.sh ADB and Fastboot will be moved to /usr/bin/

Linux
Run ADB Install Linux.sh from your command line application. Then restart your command line application. If you wish to install, simply run Uninstall ADB.sh
	•	ADB and Fastboot will be moved to /usr/bin
	•	51-android.rules will be moved /etc/udev/rules.d/
	•	The Java JDK will be installed.

Command
On Mac OS X (and some Linux distros) you can drag and drop your install file into your terminal windows and press return (or enter) and the script will run.
You also may execute the command:
/path/to/install/script/ADB-Install-<OS>.sh

License
The scripts are licensed under the GNU GPL v3. ADB, Fastboot, Java, and all other works retain their original licenses.
