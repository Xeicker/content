documentation_complete: true

title: 'ANSSI-BP-028 (high)'

description: |-
    This profile contains configurations that align to ANSSI-BP-028 at the high hardening
    level. ANSSI is the French National Information Security Agency, and stands for Agence
    nationale de la sécurité des systèmes d'information. ANSSI-BP-028 is a configuration
    recommendation for GNU/Linux systems.

    A copy of the ANSSI-BP-028 can be found at the ANSSI website:
    https://www.ssi.gouv.fr/administration/guide/recommandations-de-securite-relatives-a-un-systeme-gnulinux/

selections:
    - anssi:all:high
    - '!partition_for_opt'
    - '!package_ypserv_removed'
    - '!accounts_passwords_pam_tally2_deny_root'
    - '!install_PAE_kernel_on_x86-32'
    - '!partition_for_boot'
    - '!ensure_redhat_gpgkey_installed'
    - '!aide_periodic_checking_systemd_timer'
    - '!sudo_add_ignore_dot'
    - '!audit_rules_privileged_commands_rmmod'
    - '!audit_rules_privileged_commands_modprobe'
    - '!partition_for_usr'
    - '!package_dracut-fips-aesni_installed'
    - '!cracklib_accounts_password_pam_lcredit'
    - '!cracklib_accounts_password_pam_ocredit'
    - '!enable_pam_namespace'
    - '!audit_rules_privileged_commands_insmod'
    - '!package_ypbind_removed'
    - '!service_chronyd_or_ntpd_enabled'
    - '!sudo_dedicated_group'
    - '!chronyd_configure_pool_and_server'
    - '!accounts_passwords_pam_tally2'
    - '!cracklib_accounts_password_pam_ucredit'
    - '!accounts_passwords_pam_tally2_unlock_time'
    - '!sudo_add_umask'
    - '!sudo_add_env_reset'
    - '!cracklib_accounts_password_pam_minlen'
    - '!cracklib_accounts_password_pam_dcredit'
    - '!package_xinetd_removed'
