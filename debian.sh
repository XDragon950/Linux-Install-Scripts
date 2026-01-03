# the first two are required if you install with a root password and another user account
# apt install sudo
# sudo usermod -aG sudo (user)
sudo apt install fastfetch firefox xinit curl htop i3 thunar -y
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
sudo apt install ghostty-y
echo "deb [arch=amd64,i386] https://repo.steampowered.com/steam/ stable steam" | sudo tee /etc/apt/sources.list.d/steam.list
sudo apt update
sudo apt install steam -y
