#!/bin/bash
sudo cp vagrant_halter.sh /bin
sudo chmod 777 /bin/vagrant_halter.sh
sudo echo alias vagrant_halter=\'bash vagrant_halter.sh\' >> ~/.bashrc
sudo echo alias halter=\'bash vagrant_halter.sh\' >> ~/.bashrc
sudo echo alias vh=\'bash vagrant_halter.sh\' >> ~/.bashrc
source ~/.bashrc