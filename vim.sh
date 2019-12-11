#!/bin/bash

USER=`whoami`

DIR_PATH=`pwd`
VIM_DIR=$DIR_PATH/vim
VIM_FILE=$DIR_PATH/vimrc

mv $VIM_DIR  /home/$USER/.vim/
mv $VIM_FILE /home/$USER/.vimrc


