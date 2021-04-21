#!/bin/bash
# ------------------------------------------------------------------------------
# As used on Ubuntu 20.04.2. I am sure it will work on other versions as well.
# Script installs software I use onto Ubuntu 20.04.3
# Comment out software that you do not wish to install.
# UbuntuWorks™ © Jonny P. Johnston 2021
# ------------------------------------------------------------------------------
	#TODO Code here to automate sign-in to Ubuntu/Google/Microsoft accounts
	#TODO Code here to automate changing time-zone/sleep settings
	#TODO Code here to automate checking for additional drivers

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
	sudo apt install -y mingw-w64
	sudo apt install -y mingw-w64-tools
	sudo apt install -y cmake
	sudo apt install -y gfortran
	sudo apt install -y git subversion liblapack-dev libmetis-dev liblapack-doc
	sudo apt install -y samba
	sudo apt install -y gnome-tweaks gnome-shell-extensions
	sudo apt-get install -y gedit-plugins
	sudo apt-get install -y gnome-sushi
	sudo apt install -y grub-customizer
	sudo apt install libcanberra-gtk-module libcanberra-gtk3-module
	
# LibreOffice 7 upgrade
	sudo add-apt-repository ppa:libreoffice/libreoffice-7-0
	sudo apt update -y
	sudo apt full-upgrade -y
	
# Qt 5
	sudo apt install -y qtcreator qt5-default qtbase5-dev qttools5-dev qttools5-dev-tools qtwebengine5-dev qt5-doc qt5-doc-html qtbase5-doc-html qtbase5-examples
  
# Anaconda
  # Install libraries needed by Anaconda to launch Navigator.
  # This must be completed BEFORE installing Anaconda from the shell script.
	sudo apt install -y libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6
	# Install Anaconda from script on memory stick named jarvis-data
	bash /media/roguextech/jarvis-v1-data/Software/Anaconda/Anaconda3-2020.11-Linux-x86_64.sh
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
	sudo snap install -y IntelliJ-IDEA-Community
	sudo snap install -y vscode-insiders
	sudo snap install -y slack
	sudo snap install -y discord
	sudo snap install -y freecad
	sudo snap install -y kicad

# FreeCAD Daily Build Install
	sudo add-apt-repository ppa:freecad-maintainers/freecad-daily
	sudo apt-get update
	sudo apt-get install freecad-daily
	# Update
	sudo apt-get update
	sudo apt-get install freecad-daily
	# StartUp
	freecad-daily

# Calibre
	sudo -v && wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sudo sh /dev/stdin
	# If error use this:
	sudo -v && wget --no-check-certificate -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sudo sh /dev/stdin
	
# MATLAB
	# Username: jonny@roguextech.com
	# License ID: 8788782

# Microsoft Edge Dev
	## Setup
	curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
	sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
	sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/edge stable main" > /etc/apt/sources.list.d/microsoft-edge-dev.list'
	sudo rm microsoft.gpg
	## Install
	sudo apt update
	sudo apt install microsoft-edge-dev
	## Upgrade
	sudo apt upgrade microsoft-edge-dev

# Firefox Nightly
	sudo apt remove -y firefox
	sudo apt remove -y thunderbird
	sudo snap install firefox --beta
	sudo add-apt-repository ppa:ubuntu-mozilla-daily/ppa
	sudo apt update
	sudo apt-get update
	sudo apt-get install -y firefox-trunk
	sudo apt upgrade firefox-trunk

# OpenFOAM
	bash /media/roguextech/jarvis-v1-data/Software/openfoam/add-openfoam-repo.sh
	# or
	curl -s https://dl.openfoam.com/add-debian-repo.sh | sudo bash
	wget -q -O - https://dl.openfoam.com/add-debian-repo.sh | sudo bash
	deb [arch=amd64] https://dl.openfoam.com/repos/deb DIST main
	# Versions
	# minimalist
	sudo apt-get install openfoam2012
	# traditional
	sudo apt-get install openfoam2012-dev
	# everything
	sudo apt-get install openfoam2012-default
	# Manually define the location of the OpenFOAM directory as follows:
	export WM_PROJECT_DIR=/usr/share/openfoam
	# Uninstall
	sudo apt-get autoremove openfoam2012-"package-name"
	





