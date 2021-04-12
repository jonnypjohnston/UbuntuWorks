#!/bin/bash
# As used on Ubuntu 20.04.2. I am sure it will work on other versions as well. If not...
#
# Script that does the work for me installing the software I use onto Ubuntu 20.04.2
# Comment out software that you do not wish to install
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
	sudo apt install -y mingw-w64 mingw-w64-tools
	sudo apt install -y cmake
	sudo apt install -y gfortran
	sudo apt install -y git subversion patch wget pkg-config liblapack-dev libmetis-dev liblapack-doc
	sudo apt install -y git subversion
	# add-apt-repository ppa:git-core/ppa
	# apt update; apt install git
	sudo apt install -y git-daemon-run | git-daemon-sysvinit git-doc git-el git-email git-gui gitk gitweb git-cvs git-mediawiki git-svn db5.3-util libapache2-mod-svn subversion-tools
	sudo apt install -y samba
	sudo apt install -y gnome-tweaks
	sudo apt install -y gedit-plugins
	sudo apt install -y gnome-sushi

# LibreOffice 7 upgrade
	sudo add-apt-repository ppa:libreoffice/libreoffice-7-0
	sudo apt update -y
	sudo apt full-upgrade -y
	
# Qt Creator
	sudo apt install -y qtcreator

# Qt 4
	sudo apt install -y qt4-default
	sudo apt install -y qtbase4-dev qttools4-dev qttools4-dev-tools qtwebengine4-dev
	sudo apt install -y qt4-doc qt4-doc-html qtbase4-doc-html qtbase4-examples

# Qt 5
	sudo apt install -y qt5-default qtbase5-dev qttools5-dev qttools5-dev-tools qtwebengine5-dev qt5-doc qt5-doc-html qtbase5-doc-html qtbase5-examples

# Anaconda
  # Install libraries needed by Anaconda to launch Navigator. Must be completed BEFORE installing Anaconda
	sudo apt install -y libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6
	# Install Anaconda from script on memory stick named jarvis-data
	bash Anaconda3-2020.11-Linux-x86_64.sh
	# Update Anaconda installation
	conda update -y anaconda
	conda update -y spyder
	conda update -y jupyterlab
	conda update -y notebook
	conda install -y spyder-notebook -c spyder-ide
	conda update -y anaconda
	conda upgrade -y spyder=5.0.0

	anaconda-navigator

# Anaconda uninstall: Place holder as a reminder to myself, if I fuck up the install
	rm -rf ~/anaconda3 ~/.condarc ~/.conda ~/.continuum

# Oracle VirtualBox
	wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
	wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
	echo "deb [arch=amd64] http://download.virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib" | \ sudo tee -a /etc/apt/sources.list.d/virtualbox.list

# VirtualBox extension pack
	wget https://download.virtualbox.org/virtualbox/6.1.8/Oracle_VM_VirtualBox_Extension_Pack-6.1.8.vbox-extpack
	sudo VBoxManage extpack install Oracle_VM_VirtualBox_Extension_Pack-6.1.8.vbox-extpack
	
# GNU Octive
	sudo apt install -y octave
	sudo apt install -y octave-doc octave-info octave-htmldoc liboctave-dev
	sudo apt install -y octave-control octave-image octave-io octave-optim octave-signal octave-statistics

# Snap software installs
	sudo snap install -y IntelliJ-IDEA-Community
	sudo snap install -y vscode-insiders
	sudo snap install -y slack
	sudo snap install -y discord
	sudo snap install -y freecad --edge
	sudo snap install -y kicad --edge
	sudo snap install -y okular
	sudo snap install -y dropbox
	sudo snap install -y nautilus-dropbox

# KiCAD
	sudo apt update -y
	sudo add-apt-repository --yes ppa:kicad/kicad-5.1-releases
	sudo apt install -y --install-recommends kicad
	sudo apt install -y kicad-demos

# MEGAsync
	bash megasync-xUbuntu_20.04_amd64.deb

# MATLAB
	# Username: jonny@roguextech.com
	# License ID: 8788782

