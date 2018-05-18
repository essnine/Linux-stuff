#!/bin/bash
echo "SED"
input="/etc/apt/sources.list"

if grep -F "http://10.1.23.16:3142/" "/etc/apt/sources.list"
then
  echo "line okay"
else
  sed -i 's#http://#http://10.1.23.16:3142/#g' /etc/apt/sources.list
  #Var1 = "http\:\/\/"
  #Var2 = "http\:\/\/10.1.23.16:3142\/"
  #echo "line replaced" $line =~ s/$var1/$var2/g
fi

#less /etc/apt/trial.list # less outputs the file on the terminal. It required user input to proceed further. Useful for debugging.
sed -i 's?deb?#deb?g' /etc/apt/sources.list.d/google-chrome.list
echo "Update Initialised"
apt-get update
echo "Update Done"
clear
echo "Upgrade Initialised"
apt-get upgrade -y
echo "Upgrsade Done"
clear
echo "Dist-upgrade started"
apt-get dist-upgrade -y
echo "Dist-upgrade Done"
clear
echo "Installing tools"
apt-get install ubuntu-restricted-extras -y
clear
apt-get install cmatrix -y
clear
apt-get install cowsay -y
clear
apt-get install cowthink -y
clear
apt-get install vlc -y
clear
apt-get install iptux -y
clear
apt-get install guake -y
clear
apt-get install gparted -y
clear
apt-get install bleachbit -y
clear
apt-get install classicmenu-indicator -y
clear
echo "Installation Done"
cowsay Cleaning and Removing ...
apt-get autoclean
apt-get autoremove -y
cowsay Cleaned & Removed...
cowsay Rebooting now
#reboot
