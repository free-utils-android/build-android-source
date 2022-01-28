#!/bin/bash
# Ubuntu 21.10
# as root

vi /etc/apt/sources.list
apt update
apt purge vim-tiny nano -y
apt autoremove --purge -y
apt install vim git build-essential ninja-build curl python-is-python3 byobu zstd bc bison flex g++-multilib gperf imagemagick lzop pngcrush schedtool squashfs-tools xsltproc yasm zip lib32ncurses-dev lib32readline-dev lib32z1-dev liblz4-tool libssl-dev libxml2 libxml2-utils libsdl1.2-dev cscope device-tree-compiler clang-tidy libncurses5-dev libncurses5 zlib1g-dev gnupg x11proto-core-dev libgl1-mesa-dev fontconfig unzip libc6-dev-i386 libx11-dev libgl1-mesa-dev -y
apt dist-upgrade -y
