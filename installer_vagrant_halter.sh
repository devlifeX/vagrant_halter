#!/bin/bash
sudo cp vagrant_halter.sh /bin
sudo chmod 777 /bin/vagrant_halter.sh
sudo echo alias vagrant_halter='./vagrant_halter.sh' >> ~/.bashrc
sudo echo alias halter='./vagrant_halter.sh' >> ~/.bashrc
sudo echo alias vh='./vagrant_halter.sh' >> ~/.bashrc
sudo source ~/.bashrc