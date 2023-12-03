#!/usr/bin/env bash

if [ "$EUID" -ne 0 ]; then
    echo "Must run as root."
    exit
fi

echo "Installing build toolchains."
sleep 1
apt -y install build-essential gdb

echo "Installing linux headers for building nVidia driver."
sleep 1
apt -y install linux-headers-amd64

echo "Installing nVidia driver."
sleep 1
apt -y install nvidia-driver firmware-misc-nonfree intel-microcode --install-recommends

echo "Installing base utilities."
sleep 1
apt -y install neofetch vim nano git curl rsync tmux emacs

echo "Installing Google Chrome."
sleep 1
curl -O https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
mv *.deb ../../applications/
apt -y install ../../applications/google-chrome-stable_current_amd64.deb

echo "Installing various software."
sleep 1

apt -y install vlc ipython3 python3-pip gnome-shell-extension-dashtodock simplescreenrecorder gimp nasm geany wine wine32 wine64 libwine libwine:i386 fonts-wine dosbox libsdl2-*-2.0-0 iverilog ghdl gtkwave notepadqq freeglut3-dev gawk patch bzip2 tar make libgmp-dev libmpfr-dev libmpc-dev gettext wget libelf-dev texinfo bison flex sed git diffutils curl libjpeg-dev libpng-dev pkg-config libisofs-dev meson ninja-build yaru-theme-icon 



