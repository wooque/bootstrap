#!/usr/bin/env bash

if type apt-get &> /dev/null ; then
    PKGR=apt-get
elif type yum > &/dev/null ; then
    PKGR=yum
else
    echo "No package manager"
fi

sudo $PKGR -y install zsh git vim
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
git init
git remote add origin https://github.com/wooque/configs
git fetch --all
git reset --hard origin/master
git branch --set-upstream-to=origin/master master
