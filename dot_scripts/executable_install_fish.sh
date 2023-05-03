#!/bin/env bash

if [[ $OSTYPE == 'linux-gnu' ]]; then
    if [[ $(lsb_release -i -s) == 'Ubuntu' ]]; then
        sudo apt-add-repository ppa:fish-shell/release-3
        sudo apt update
        sudo apt install fish
    fi
fi