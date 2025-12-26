#!/bin/bash

# Check if .dot folder exists in the same directory
if [ ! -d "./.dotmanager" ]; then
    echo "cloning .dotmanager"
    git clone --depth 1 https://github.com/xj11400/.dotmanager.git .dotmanager
fi

source ./.dotmanager/xdots dot $@
