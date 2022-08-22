#!/bin/bash
set -e

##########################
#                        #
# install yak for darwin # 
#                        #
##########################
if [ "$(uname)" == "Darwin" ]; then
  if [ "$(uname -m)" == "arm64" ]; then
    softwareupdate --install-rosetta
    sudo mkdir -p /usr/local/bin
  fi

  echo "Install for Darwin(MacOS) intel/m1 fit"
  echo "-------------------------------------"
  echo "Chmod +x yak_darwin_amd64"
  chmod +x ./yak_darwin_amd64
  echo "Start install yak_darwin_amd64 (ADD Yak to ENV PATH)"
  sudo ./yak_darwin_amd64 install
  yak version

  echo "Cleaning cache file..."
  rm ./yak_darwin_amd64
  rm ./yak_linux_amd64
  rm ./install-yak.sh
  echo "Finished"

##########################
#                        #
# install yak for linux  #
#                        #
##########################
elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
  echo "Install for Linux amd64 release"
  echo "-------------------------------------"
  echo "Chmod +x yak_linux_amd64"
  chmod +x ./yak_linux_amd64
  echo "Start install yak_linux_amd64 (ADD Yak to ENV PATH)"
  sudo ./yak_linux_amd64 install
  yak version

  echo "Cleaning cache file..."
  rm ./yak_darwin_amd64
  rm ./yak_linux_amd64
  rm ./install-yak.sh
  echo "Finished"
fi
