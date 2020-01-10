#!/bin/bash

USER=`whoami`

DIR_PATH=`pwd`
VIM_DIR=$DIR_PATH/vim
VIM_FILE=$DIR_PATH/vimrc

home=~
vimrc=$home'/.vimrc'
path=$home'/.vim/bundle'
curr=$(pwd)
config=$curr'/airline.txt'
cd ~

if [ -e $vimrc ]
then
    isInstall=$(cat $vimrc|grep neobundle|wc -l)

    if [[ -d $path || $isInstall -ne 0 ]]
    then
        echo "Already install NeoBundle,please rm -rf the dir '~/.vim/bundle' and remove the config about 'neobundle' from file of .vimrc" && exit 0
    fi
else
    touch $vimrc;
fi

curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh

cd $DIR_PATH

mv $VIM_DIR  /home/$USER/.vim/
mv $VIM_FILE /home/$USER/.vimrc


