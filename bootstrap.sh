#!/usr/bin/env bash

sudo yum -y install zsh git vim redhat-lsb-core
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
git init
git remote add origin https://github.com/wooque/configs
git fetch --all
git reset --hard origin/master
git branch --set-upstream-to=origin/master master
