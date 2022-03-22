#!/bin/bash
# Ubuntu 21.10
# as root

vi /etc/apt/sources.list
apt update
apt purge lxd-installer snapd ufw vim-tiny nano -y
apt install -y grub2 apt-file glusterfs-client \
  linux-virtual-hwe-20.04 linux-tools-virtual-hwe-20.04 linux-modules-extra-5.13.0-37-generic hwdata \
  lightdm desktop-base mate-desktop-environment mate-indicator-applet \
  x2goserver x2goserver-xsession x2gomatebindings \
  fcitx5-rime librime-data-pinyin-simp fontconfig \
  mesa-utils libgl1-mesa-dev \
  qemu-system-arm binfmt-support qemu-user-static qemu \
  libncurses-dev dialog libncursesw5-dev libncurses5-dev libncurses5 \
  python3-requests python3-setuptools python-is-python3 \
  vim iputils-ping curl tree byobu htop \
  git kdiff3 subversion swig gperf imagemagick pngcrush schedtool squashfs-tools xsltproc yasm gnupg \
  liblz4-tool unzip zip lzop zstd \
  android-sdk-platform-tools device-tree-compiler \
  build-essential ninja-build g++-multilib clang-tidy ccache cscope \
  bison flex gettext bc libxml2 libxml2-utils \
  ecj fastjar java-propose-classpath \
  libwolfssl-dev libelf-dev libssl-dev libjsoncpp-dev libssl-dev libsdl1.2-dev zlib1g-dev x11proto-core-dev libx11-dev \
  libc6-dev-i386 lib32ncurses-dev lib32readline-dev lib32z1-dev 
apt autoremove --purge -y
apt dist-upgrade -y
mv 00-installer-config.yaml 00-init.yaml
