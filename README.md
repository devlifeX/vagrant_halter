# vagrant halter
vagrant halter help you halt all running vagrant with single command
it is usefull before poweroff your system 

##Installation
```bash
cd /tmp
git clone https://github.com/devlifeX/vagrant_halter.git
cd vagrant_halter
./installer_vagrant_halter.sh
```
Then, simply write ``vagrant_halter`` in your terminal

You can use this:
```bash
echo "alias sf='vh && poweroff -f'" >> ~/.bashrc
source ~/.bashrc
```
for alias poweroff force, then use
```bash
sf
```
