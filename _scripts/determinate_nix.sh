#!/bin/bash

function determinate_nix_install() {
    local install_script=${1:-/tmp}/nix-installer.sh
    curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix > ${install_script}
    chmod +x ${install_script}
    sh ${install_script} install

}

determinate_nix_install "$@"
