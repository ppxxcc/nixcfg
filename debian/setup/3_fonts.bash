#!/usr/bin/env bash

if [ "$EUID" -ne 0 ]; then
    echo "Must run as root."
    exit
fi

echo "Installing fonts."
sleep 1
apt -y install fonts-inconsolata fonts-misaki fonts-mona fonts-konatu fonts-noto-cjk fonts-umeplus

echo "Do you wish to install local fonts from nixcfg/fonts/ ?"
echo "Fonts need to be manually placed there."
echo "Manually install fonts? (y/n): "

read yn

if [ "$yn" = "y" ]; then
    echo "Installing user fonts."
    sleep 1
    cp -rv ../../fonts/* /usr/local/share/fonts/
    rm /usr/local/share/fonts/MSGothicMincho/msgothic.ttc
    fc-cache -rv
else
    echo "Not installing fonts."
fi

