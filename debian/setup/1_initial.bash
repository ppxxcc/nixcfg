#!/usr/bin/env bash

if [ "$EUID" -ne 0 ]; then
    echo "Must run as root."
    exit
fi

user="pxc"

echo "Adding user $user to sudoers."
sleep 2

echo "$user ALL=(ALL:ALL) ALL" > /etc/sudoers.d/$user

sources="
deb http://deb.debian.org/debian bookworm main contrib non-free non-free-firmware
deb-src http://deb.debian.org/debian bookworm main contrib non-free non-free-firmware

deb http://deb.debian.org/debian-security/ bookworm-security main contrib non-free non-free-firmware
deb-src http://deb.debian.org/debian-security/ bookworm-security main contrib non-free non-free-firmware

deb http://deb.debian.org/debian bookworm-updates main contrib non-free non-free-firmware
deb-src http://deb.debian.org/debian bookworm-updates main contrib non-free non-free-firmware

"

echo "Setting up apt sources."
sleep 2

echo "$sources" >| /etc/apt/sources.list

echo "Removing bloatware."
sleep 2

apt -y remove gnome-2048
apt -y remove five-or-more
apt -y remove gnome-mines
apt -y remove gnome-sudoku
apt -y remove hitori
apt -y remove gnome-klotski
apt -y remove lightsoff
apt -y remove quadrapassel
apt -y remove shotwell
apt -y remove swell-foop
apt -y remove tali
apt -y remove gnome-taquin
apt -y remove gnome-tetravex
apt -y remove thunderbird
apt -y remove gnome-chess
apt -y remove iagno
apt -y remove gnome-robots
apt -y remove gnome-mahjongg
apt -y remove gnome-nibbles
apt -y remove aisleriot
apt -y remove four-in*
apt -y remove xiterm+thai
apt -y autoremove

echo "Enabling i386 multiarch and updating packages..."
sleep 2

dpkg --add-architecture i386
apt update
apt upgrade

echo "The system is updated now."
echo "Reboot before continuing with stage 2."


