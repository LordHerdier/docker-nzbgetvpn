#!/bin/bash
# exit script if return code != 0
set -e

# setup iptables
# check if iptables is installed and if so then apply rules
if [[ -f "/usr/bin/iptables" ]]; then
    source /root/iptable.sh
fi

# PERMISSIONS_PLACEHOLDER

# ENVVARS_PLACEHOLDER

# load env vars for applications (if defined)
if [[ -f "/root/envvars.sh" ]]; then
    source /root/envvars.sh
fi

# run supervisor
/usr/bin/supervisord -c /etc/supervisor/conf.d/supervisord.conf
