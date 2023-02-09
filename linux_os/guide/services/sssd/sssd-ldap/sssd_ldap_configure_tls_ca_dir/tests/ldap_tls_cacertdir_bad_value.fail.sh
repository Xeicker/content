#!/bin/bash
# packages = /usr/lib/systemd/system/sssd.service
# profiles = xccdf_org.ssgproject.content_profile_stig

. $SHARED/setup_config_files.sh
setup_correct_sssd_config
enable_and_start_service

sed -i 's:\(ldap_tls_cacertdir = \).*:\1/tmp/etc/openldap/cacerts:g' /etc/sssd/sssd.conf

