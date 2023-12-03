#!/usr/bin/env bash

echo "Setting up home directory (dotfile symlinks, etc.)"
sleep 1

for f in ~/nixcfg/dotfiles/.*; 
do
    link=`basename $f`
    echo "Linking ~/$link to $f"
    ln -s $f ~/$link
done

echo "Linking Japanese home directories to English names."
ln -s ~/ダウンロード ~/Downloads
ln -s ~/ドキュメント ~/Documents
ln -s ~/テンプレート ~/Templates
ln -s ~/ビデオ ~/Videos
ln -s ~/音楽 ~/Music
ln -s ~/画像 ~/Images
ln -s ~/公開 ~/Public
ln -s ~/デスクトップ ~/Desktop
