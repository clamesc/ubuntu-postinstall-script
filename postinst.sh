#!/bin/bash

sudo apt-get -y --force-yes upgrade

sudo add-apt-repository -y ppa:thomas-schiex/blender
sudo apt-get -y --force-yes update
sudo apt-get install -y blender

sudo add-apt-repository -y ppa:otto-kesselgulasch/gimp
sudo apt-get -y --force-yes update
sudo apt-get install -y gimp

sudo apt-get install -y git gitg gitk

sudo apt-get install -y encfs

sudo add-apt-repository -y ppa:gencfsm/ppa
sudo apt-get -y --force-yes update
sudo apt-get install -y gnome-encfs-manager

wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get -y --force-yes update
sudo apt-get install -y google-chrome-stable

sudo sh -c 'echo "deb http://linux.dropbox.com/ubuntu/ xenial main" >> /etc/apt/sources.list.d/dropbox.list'
sudo apt-get -y --force-yes update
sudo apt-get install -y dropbox

sudo apt-get install -y gparted

sudo apt-get install -y texlive-full 

sudo add-apt-repository -y ppa:gummi/gummi
sudo apt-get -y --force-yes update
sudo apt-get install -y gummi

sudo add-apt-repository -y ppa:hugin/next
sudo apt-get -y --force-yes update
sudo apt-get install -y hugin

sudo add-apt-repository -y ppa:kubuntu-ppa/backports-landing
sudo apt-get -y --force-yes update
sudo apt-get install -y kate

sudo add-apt-repository -y ppa:dhor/myway
sudo apt-get -y --force-yes update
sudo apt-get install -y luminance-hdr

sudo apt-get install -y meld

sudo apt-get install -y ubuntu-restricted-extras

sudo apt-get install -y vlc

sudo apt-get install -y vim

sudo apt-get install -y openjdk-8-jdk

sudo apt-get install -y virtualbox virtualbox-ext-pack

sudo apt-get install -y unity-tweak-tool gnome-tweak-tool

sudo apt-get install -y pdfshuffler

sudo add-apt-repository -y ppa:dhor/myway
sudo apt-get -y --force-yes update
sudo apt-get install -y rawtherapee-unstable

sudo apt install -y gnome-online-accounts

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get -y --force-yes update
sudo apt-get install spotify-client

sudo add-apt-repository -y ppa:webupd8team/sublime-text-3
sudo apt-get -y --force-yes update
sudo apt-get install -y sublime-text-installer

wget -c www.mendeley.com/repositories/ubuntu/stable/amd64/mendeleydesktop-latest
sudo dpkg -i mendeleydesktop-latest
sudo apt-get install -f
sudo apt-get install -y libqtsvg4-perl libqtwebkit4

wget http://repo.continuum.io/archive/Anaconda3-4.2.0-Linux-x86_64.sh
bash ./Anaconda3-4.2.0-Linux-x86_64.sh
conda create -n py27 python=2.7 ipykernel
conda create -n py35 python=3.5 ipykernel

sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-key 0xB01FA116
sudo apt-get -y --force-yes update
sudo apt-get install -y ros-kinetic-desktop-full
sudo rosdep init
rosdep update
echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc
source ~/.bashrc
sudo apt-get install -y python-rosinstall

mkdir Programs

wget http://coppeliarobotics.com/files/V-REP_PRO_EDU_V3_3_2_64_Linux.tar.gz
tar -xvzf V-REP_PRO_EDU_V3_3_2_64_Linux.tar.gz -C ~/Programs/

wget https://sourceforge.net/projects/freeplane/files/latest/download -O ~/Downloads/freeplane.zip
unzip ~/Downloads/freeplane.zip -d ~/Programs/

wget https://github.com/holgerbrandl/opencards/releases/download/v2.5/opencards-2.5.0-linux.zip -O opencards.zip
mkdir ~/Programs/opencards
unzip opencards.zip -d ~/Programs/opencards

sudo apt-get -y --force-yes upgrade

gsettings set org.compiz.unityshell:/org/compiz/profiles/unity/plugins/unityshell/ launcher-minimize-window true
gsettings set com.canonical.Unity.Launcher launcher-position Bottom
