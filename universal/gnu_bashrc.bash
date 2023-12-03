#!/usr/bin/env bash

echo "" >> ~/.bashrc
echo "#===============================================================" >> ~/.bashrc
echo "#Personal customization goes here" >> ~/.bashrc
echo "#===============================================================" >> ~/.bashrc

echo "alias ls='ls -hF --color --time-style=long-iso'" >> ~/.bashrc
echo 'PS1="\[\033[01;32m\]\u@\h\[\033[00m\] \[\033[01;33m\]\w\[\033[00m\]\n\[\033[01;37m\]$\[\033[00m\] "' >> ~/.bashrc
echo "alias disassemble='objdump -drwCS -Mintel'" >> ~/.bashrc
alias gedit='gnome-text-editor'

echo "Updated ~/.bashrc."
