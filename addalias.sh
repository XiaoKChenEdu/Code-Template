#!/bin/bash

CURRENTDATE=`date +"%b-%d-%Y-%H%M"`

if [ -f ~/.bash_profile ]; then
  mv ~/.bash_profile ~/.bash_profile_${CURRENTDATE}
fi

if [ ! -d ~/Template ]; then
  mkdir ~/Template
fi

if [ ! -f ~/Template/Template.c ]; then
  cp -r ./Template.c ~/Template
fi

if [ ! -f ~/Template/Template.cpp ]; then
  cp -r ./Template.cpp ~/Template
fi

if [ ! -f ~/Template/Template.py ]; then
  cp -r ./Template.py ~/Template
fi

if [ ! -f ~/Template/Template.sh ]; then
  cp -r ./Template.sh ~/Template
fi


echo 'alias CTemplate="cp -r ~/Template/Template.c ."' >> ~/.bash_profile
echo 'alias CPPTemplate="cp -r ~/Template/Template.cpp ."' >> ~/.bash_profile
echo 'alias PYTemplate="cp -r ~/Template/Template.py ."' >> ~/.bash_profile
echo 'alias SHTemplate="cp -r ~/Template/Template.sh ."' >> ~/.bash_profile
echo 'source ~/.bashrc' >> ~/.bash_profile
