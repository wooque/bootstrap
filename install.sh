#!/usr/bin/env bash

if type apt &> /dev/null ; then
    PKGR=apt
elif type yum &> /dev/null ; then
    PKGR=yum
else
    echo "No package manager"
    exit
fi

sudo $PKGR -y install zsh git vim htop ranger highlight

chsh -s /usr/bin/zsh

git init
git remote add origin https://github.com/wooque/configs
git fetch --all
git reset --hard origin/minimal
git checkout minimal
