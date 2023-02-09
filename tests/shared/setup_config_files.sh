#!/bin/bash

configs_dir="$( dirname "${BASH_SOURCE[0]}" )"

setup_correct_sssd_config() {
    mkdir -p /etc/sssd
    cp "$configs_dir/sssd.conf" /etc/sssd/
}

enable_and_start_service() {
    systemctl enable sssd
    systemctl start sssd
}
