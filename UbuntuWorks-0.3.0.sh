lp#!/bin/bash

# As used on Ubuntu 20.04.2. I am sure it will work on other versions as well.
#
#
# Script that does the work for me installing the software I use onto Ubuntu 20.04.2
#	Comment out software that you do not wish to install
#
# UbuntuWorks™ © Jonny P. Johnston 2021
  TODO # Code here to sign-in to Ubuntu/Google/Microsoft accounts
  TODO # Code here to change time-zone/sleep settings
  TODO # Code here to check other sources for graphics drivers

	# Ubuntu software update
	sudo apt update -y
	sudo apt upgrade -y

# OpenJavaJDK and Default Java JRE
	sudo apt install -y openjdk-8-jdk-headless
	sudo apt install -y openjdk-11-jdk-headless
	sudo apt install -y openjdk-13-jdk-headless
	sudo apt install -y openjdk-16-jdk-headless
	sudo apt install -y default-jre

# Developer Tools
	sudo apt install -y build-essential
	sudo apt install -y cmake
	sudo apt install -y mingw-w64 mingw-w64-tools
	sudo apt install -y mingw-w64-tools
	sudo apt install -y gfortran
	sudo apt install -y git
	sudo apt install -y subversion
	sudo apt install -y samba
	sudo apt install -y aptitude

# Qt 5
	sudo apt install -y qt5-default qtcreator
	sudo apt install -y qtbase5-dev qttools5-dev qttools5-dev-tools qtwebengine5-dev
	sudo apt install -y qt5-doc qt5-doc-html qtbase5-doc-html qtbase5-examples

# Anaconda
  # Install packages needed for Anaconda's GUI Navigator to build BEFORE installing Anaconda
	sudo apt install -y libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6
	# Install from mem stick attached to system
	bash media/roguextech/jarvis-data/Software/Anaconda3-2020.11-Linux-x86_64.sh
	# Update Anaconda's installed packages and applications
	conda update -y anaconda
	conda update -y spyder
	conda update -y jupyterlab
	conda install -y spyder-notebook -c spyder-ide
	conda update -y anaconda

# Anaconda uninstall:
  # Place holder as a reminder to myself, if I fuck up the install
	# rm -rf ~/anaconda3 ~/.condarc ~/.conda ~/.continuum

# gedit
	sudo apt install -y gedit-plugins

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
	sudo snap install -y okular

# KiCAD
  sudo apt update
	sudo add-apt-repository --yes ppa:kicad/kicad-5.1-releases
	sudo apt install -y --install-recommends kicad
	sudo apt install -y kicad-demos

# MEGAsync
	bash media/roguextech/jarvis-data/Software/MEGA/megasync-xUbuntu_20.04_amd64.deb

# MATLAB
	# Username: jonny@roguextech.com
	# License ID: 8788782




