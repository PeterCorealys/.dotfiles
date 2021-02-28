#!/bin/bash

function install {
  which $1 &> /dev/null

  if [ $? -ne 0 ]; then
    echo "Installing: ${1}..."
    apt-get install $1
  else
    echo "Already installed: ${1}"
  fi
}

install vim
install awesome
install xorg
install net-tools
install terminator
install rofi
install tmux
install neofetch
install lolcat
install htop
install git
install tree
install pcmanfm
install ranger
