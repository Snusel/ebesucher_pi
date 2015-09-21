#!/bin/bash

current=pwd

cd ${home}
git clone https://github.com/Huskynarr/ebesucher_pi.git
cd ebesucher_pi

# We made it!
echo -e "\e[32mDone!"


echo -e "\e[39mYou want to start?"
echo "Please start manually: ./restarter.sh"

