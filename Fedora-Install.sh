#!/bin/bash

function install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    dnf install $1
  else
    echo "Already installed: ${1}"
  fi
}

install awesome
install rofi
install compton

install vim
install nvim
install git

install terminator 
install tmux
install xterm

install neofetch
install lolcat
install htop
install tree
