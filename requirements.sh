#!/bin/bash
packagename[0]=curl
packagename[1]=wget
packagename[2]=nano
packagename[3]=oracle-java7-jdk
packagename[4]=zip
packagename[5]=unzip
packagename[6]=iceweasel
packagename[7]=iceweasel-l10n-de
packagename[8]=git

for i in ${packagename[@]}; do
PKG_OK=$(dpkg-query -W --showformat='${Status}\n' $i | grep "install ok installed")
echo -e "\e[39mChecking for $i:\e[32m $PKG_OK"
if [ "" == "$PKG_OK" ]; then
  echo -e "\n\e[31mNo $i found! Setting up $i.\n\e[39m"
  sudo apt-get --force-yes --yes install $i
fi
done



