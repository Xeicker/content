#!/bin/bash
# packages = /usr/lib/systemd/system/sssd.service

. $SHARED/setup_config_files.sh
setup_correct_sssd_config
enable_and_start_service

sed -i '/ldap_id_use_start_tls/d' /etc/sssd/sssd.conf
