#!/bin/env bash

if [[ $OSTYPE == 'linux-gnu' ]]; then
    if [[ $(lsb_release -i -s) == 'Ubuntu' ]]; then
        wget -O - https://apt.kitware.com/keys/kitware-archive-latest.asc 2>/dev/null | gpg --dearmor - | sudo tee /usr/share/keyrings/kitware-archive-keyring.gpg >/dev/null
        echo "deb [signed-by=/usr/share/keyrings/kitware-archive-keyring.gpg] https://apt.kitware.com/ubuntu/ $(lsb_release -c -s) main" | sudo tee /etc/apt/sources.list.d/kitware.list >/dev/null
        sudo apt-get update
        sudo rm /usr/share/keyrings/kitware-archive-keyring.gpg
        sudo apt-get install kitware-archive-keyring
        sudo apt-get install cmake
    fi
fi