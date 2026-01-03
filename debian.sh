# the first two are required if you install with a root password and another user account
# apt install sudo
# sudo usermod -aG sudo (user)
sudo apt install wget curl 
wget https://cdn.fastly.steamstatic.com/client/installer/steam.deb
sudo dpkg -i steam.deb
sudo apt --fix-broken install -y
sudo apt install fastfetch chromium xinit curl htop i3 thunar zsh -y
chsh -s /bin/zsh
curl -fsSL https://download.opensuse.org/repositories/home:clayrisser:sid/Debian_Unstable/Release.key | gpg --dearmor | sudo tee /etc/apt/keyrings/home_clayrisser_sid.gpg > /dev/null
ARCH="$(dpkg --print-architecture)"
sudo tee /etc/apt/sources.list.d/home:clayrisser:sid.sources > /dev/null <<EOF
Types: deb
URIs: http://download.opensuse.org/repositories/home:/clayrisser:/sid/Debian_Unstable/
Suites: /
Architectures: $ARCH
Signed-By: /etc/apt/keyrings/home_clayrisser_sid.gpg
EOF
sudo apt update
sudo apt install ghostty -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
sed -i 's/robbyrussel/bira/g' ~/file.txt
sudo reboot
