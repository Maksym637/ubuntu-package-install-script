#!/bin/bash

sudo apt update
sudo apt upgrade

echo "- - - - - - - - - CHROME - - - - - - - - -"

if google-chrome --version; then
    echo "Chrome browser is already installed"
else
    echo "Install Chrome browser . . ."
    wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
    sudo dpkg -i google-chrome-stable_current_amd64.deb
    sudo rm -rf google-chrome-stable_current_amd64.deb
fi


echo "- - - - - - - - - GIT - - - - - - - - -"

if git --version; then
    echo "Git is already installed"
else
    echo "Install Git . . ."
    sudo apt install git-all
fi


echo "- - - - - - - - - VSCode IDE - - - - - - - - -"

echo "Install VSCode IDE . . ."
sudo snap install code --classic


echo "- - - - - - - - - POSTMAN - - - - - - - - -"

echo "Install Postman . . ."
sudo snap install postman
