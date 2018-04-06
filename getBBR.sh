#!/usr/bin/env bash
getBBR() {
    # check_bbr_status
    local param=$(sysctl net.ipv4.tcp_available_congestion_control | awk '{print $5}')
    if [[ x"${param}" == x"bbr" ]]; then
        echo "bbr enabled"
        exit 0
    fi
    # install_elrepo
    rpm --import https://www.elrepo.org/RPM-GPG-KEY-elrepo.org
    rpm -Uvh http://www.elrepo.org/elrepo-release-7.0-3.el7.elrepo.noarch.rpm
    yum --enablerepo=elrepo-kernel -y install kernel-ml kernel-ml-devel
    # install_config
    grub2-set-default 0
    # sysctl_config
    sed -i '/net.core.default_qdisc/d' /etc/sysctl.conf
    sed -i '/net.ipv4.tcp_congestion_control/d' /etc/sysctl.conf
    echo "net.core.default_qdisc = fq" >> /etc/sysctl.conf
    echo "net.ipv4.tcp_congestion_control = bbr" >> /etc/sysctl.conf
    sysctl -p >/dev/null 2>&1
    # reboot_os
    reboot
}
getBBR