
sudo apt update -y
sudo apt install -y make gcc libzip-dev nodejs npm curl pkg-config git
sudo apt install -y pip3 terminator --upgrade
sudo pip3 install frida-tools frida --upgrade


mkdir ~/droidsec

cd ~/droidsec
git clone git@github.com:radare/radare2.git
cd radare2
sys/install.sh

cd ~/droidsec
git clone git@github.com:enovella/re-scripts.git
cd re-scripts/droid/jadx-installer
python3 dwn_jadx.py

cd ~/droidsec
git clone git@github.com:bkerler/ghidra_installer.git
cd ghidra_installer
./install-ghidra.sh


r2pm init && r2pm -ci r2frida && r2pm -ci r2dec