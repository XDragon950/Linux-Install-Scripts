# the first two are required if you install with a root password and another user account
# apt install sudo
# sudo usermod -aG sudo (user)
sudo apt install wget curl adwaita-icon-theme libfontconfig1 libpangocairo-1.0-0 libxdamage1 bash-completion libfreetype6 libpangoft2-1.0-0 libxfixes3 curl libfribidi0 libpciaccess0 libxft2 dbus-user-session libgbm1 libpixman-1-0 libxi6 dconf-gsettings-backend libgdk-pixbuf-2.0-0 libpng16-16t64 libxinerama1 dconf-service libgdk-pixbuf2.0-bin libpolkit-agent-1-0 libxkbcommon0 distro-info-data libgdk-pixbuf2.0-common libpolkit-gobject-1-0 libxml2 file libgl1 libpython3-stdlib libxmlb2 fontconfig libgl1-mesa-dri libpython3.13-minimal libxmu6 fontconfig-config libgles2 libpython3.13-stdlib libxpm4 fonts-dejavu-core libglib2.0-0t64 librsvg2-2 libxrandr2 fonts-dejavu-mono libglib2.0-data librsvg2-common libxrender1 gstreamer1.0-gl libglvnd0 libsensors-config libxshmfence1 gstreamer1.0-plugins-base libglx-mesa0 libsensors5 libxt6t64 gtk-update-icon-cache libglx0 libsharpyuv0 libxxf86vm1 hicolor-icon-theme libgraphene-1.0-0 libsm6 libyaml-0-2 iso-codes libgraphite2-3 libstemmer0d libz3-4 libadwaita-1-0 libgstreamer-gl1.0-0 libthai-data lsb-release libappstream5 libgstreamer-plugins-base1.0-0 libthai0 lsof libatomic1 libgstreamer1.0-0 libtheoradec1 luit libavahi-client3 libgtk-4-1 libtheoraenc1 media-types libavahi-common-data libgtk-4-bin libtiff6 mesa-libgallium libavahi-common3 libgtk-4-common libutempter0 mesa-vulkan-drivers libcairo-gobject2 libgtk-4-media-gstreamer libvisual-0.4-0 pkexec libcairo-script-interpreter2 libgudev-1.0-0 libvorbis0a polkitd libcairo2 libharfbuzz-subset0 libvorbisenc2 python-apt-common libcdparanoia0 libharfbuzz0b libvulkan1 python3 libcloudproviders0 libice6 libwayland-client0 python3-apt libcolord2 libjbig0 libwayland-cursor0 python3-minimal libcups2t64 libjpeg62-turbo libwayland-egl1 python3.13 libcurl4t64 liblcms2-2 libwayland-server0 python3.13-minimal libdatrie1 liblerc4 libwebp7 sgml-base libdav1d7 libllvm19 libx11-xcb1 shared-mime-info libdconf1 liblsof0 libxaw7 x11-common libdeflate0 liblzo2-2 libxcb-dri3-0 xbitmaps libdrm-amdgpu1 libmagic-mgc libxcb-glx0 xdg-user-dirs libdrm-common libmagic1t64 libxcb-present0 xkb-data libdrm-intel1 libnspr4 libxcb-randr0 xml-core libdrm2 libnss3 libxcb-render0 xterm libduktape207 libogg0 libxcb-shm0 xz-utils libegl-mesa0 libopus0 libxcb-sync1 zenity libegl1 liborc-0.4-0t64 libxcb-xfixes0
zenity-common libepoxy0 libpango-1.0-0 libxcursor1
wget https://cdn.fastly.steamstatic.com/client/installer/steam.deb
sudo dpkg -i steam.deb
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
