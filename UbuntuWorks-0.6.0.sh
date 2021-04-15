#!/bin/bash

# As used on Ubuntu 20.04.2. I am sure it will work on other versions as well. If not...
#
# Script that does the work for me installing the software I use onto Ubuntu 20.04.2
# Comment out software that you do not wish to install.
#
# UbuntuWorks™ © Jonny P. Johnston 2021

	#TODO Code here to sign-in to Ubuntu/Google/Microsoft accounts
	#TODO Code here to change time-zone/sleep settings
	#TODO Code here to check other sources for graphics drivers

	# Ubuntu software update
	sudo apt update -y
	sudo apt upgrade -y
	sudo apt autoremove -y
	
# OpenJavaJDK and Default Java JRE
	sudo apt install -y openjdk-8-jdk-headless
	sudo apt install -y openjdk-11-jdk-headless
	sudo apt install -y openjdk-13-jdk-headless
	sudo apt install -y openjdk-16-jdk-headless
	sudo apt install -y default-jre

# Developer Tools
	sudo apt install -y build-essential
	# Suggested Packages: debian-keyring g++-multilib g++-9-multilib gcc-9-doc gcc-multilib autoconf automake libtool flex bison gcc-doc gcc-9-multilib gcc-9-locales glibc-doc libstdc++-9-doc make-doc
	sudo apt install -y mingw-w64 mingw-w64-tools
	# Suggested Packages: gcc-9-locales wine wine64
	sudo apt install -y cmake
	# Suggested Packages: cmake-doc ninja-build
	sudo apt install -y gfortran
	# Suggested Packages: gfortran-multilib gfortran-doc gfortran-9-multilib gfortran-9-doc libcoarrays-dev
	sudo apt install -y git subversion patch wget pkg-config liblapack-dev libmetis-dev liblapack-doc
	# Suggested Packages: git-daemon-run | git-daemon-sysvinit git-doc git-el git-email git-gui gitk gitweb git-cvs git-mediawiki git-svn db5.3-util libapache2-mod-svn subversion-tools
	sudo apt install -y samba
	# Suggested Packages: python-markdown-doc python-pygments-doc ttf-bitstream-vera python-pyparsing-doc bind9 bind9utils ctdb ldb-tools ntp | chrony smbldap-tools winbind heimdal-clients
	sudo apt-get install -y gnome-tweaks
	# Suggested Packages: chromium | chromium-browser
	sudo apt-get install -y gedit-plugins
	sudo apt-get install -y gnome-sushi
	# sudo apt install libcanberra-gtk-module libcanberra-gtk3-module
	
# LibreOffice 7 upgrade
	sudo add-apt-repository ppa:libreoffice/libreoffice-7-0
	sudo apt update -y
	sudo apt full-upgrade -y
	
# Qt 5
	sudo apt install -y qtcreator qt5-default qtbase5-dev qttools5-dev qttools5-dev-tools qtwebengine5-dev qt5-doc qt5-doc-html qtbase5-doc-html qtbase5-examples

# Anaconda
  # Install libraries needed by Anaconda to launch Navigator. This must be completed BEFORE installing Anaconda from the shell script.
	sudo apt install -y libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6
	# Install Anaconda from script on memory stick named jarvis-data
	bash Anaconda3-2020.11-Linux-x86_64.sh
	# Update Anaconda installation
	conda update -y anaconda
	conda update -y spyder
	conda update -y jupyterlab
	conda update -y notebook
	conda install -y spyder-notebook -c spyder-ide
	conda install spyder=5.0.0
	conda upgrade -y anaconda
	anaconda-navigator
	# Anaconda uninstall: If I fuck up the install reminder to myself
	rm -rf ~/anaconda3 ~/.condarc ~/.conda ~/.continuum
	
# GNU Octive
	sudo apt install -y octave
	sudo apt install -y octave-doc octave-info octave-htmldoc liboctave-dev
	sudo apt install -y octave-control octave-image octave-io octave-optim octave-signal octave-statistics

# Snap software installs
	# sudo snap install -y IntelliJ-IDEA-Community
	# sudo snap install -y vscode-insiders
	# sudo snap install -y slack
	# sudo snap install -y discord
	# sudo snap install -y freecad
	# sudo snap install -y kicad

# Calibre
	sudo -v && wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sudo sh /dev/stdin
	# If error use this:
	sudo -v && wget --no-check-certificate -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sudo sh /dev/stdin
	
# MEGAsync
	bash megasync-xUbuntu_20.04_amd64.deb

# MATLAB
	# Username: jonny@roguextech.com
	# License ID: 8788782

# Firefox Nightly
	sudo apt remove -y firefox
	sudo apt remove -y thunderbird
	sudo add-apt-repository ppa:ubuntu-mozilla-daily/ppa
	sudo apt-get update
	sudo apt-get install -y firefox-trunk
