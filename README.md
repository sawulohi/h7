# h7 Mini module for a new desktop environment using SaltStack

This project will be using [Debian/Bullseye64](https://www.debian.org/download) and [Ubuntu22.04.1 LTS](https://releases.ubuntu.com/22.04.1/ubuntu-22.04.1-desktop-amd64.iso).
The host machines used for testing are ran on VirtualBox (Version 6.1.26 r145957 (Qt5.6.2)) using the aformentioned Linux distros.

## What does it do?

The purpose of this module is to give the user a head start on a new host machine.
This is achieved through installing a variety of different useful programs using SaltStack.
Programs that are going to be included are:
 * micro - a text editor
 * vlc - a media player
 * gimp - image editing
 * git - a version control system

Debian already comes with Mozilla Firefox, but we are going to configure it a bit so it will start off with:
 * google as the default homepage
 * Set Firefox to use dark theme by default

## Usage

* Have salt-master installed on your dedicated master host and salt-minion on your minion host, see quick instructions:
  * [Tero Karvinen Salt Quickstart – Salt Stack Master and Slave on Ubuntu Linux](https://terokarvinen.com/2018/salt-quickstart-salt-stack-master-and-slave-on-ubuntu-linux/)
* Copy the repository into your `/srv/salt`-directory
* Run the state by using the command `sudo salt '*' state.apply`

Homework for the course Configuration Management Systems - Palvelinten Hallinta ict4tn022-3018 - Autumn 2022
