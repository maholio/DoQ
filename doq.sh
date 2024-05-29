#!/bin/sh

echo "Choose an action:"
echo "1) Install DNS over QUIC"
echo "2) Uninstall DNS over QUIC"
read -p "Enter your choice (1 or 2): " choice

case $choice in
    1)
        echo "Installation selected."
        read -p "Enter the DNS over QUIC server name: " doq_server
        opkg update
        opkg install dnsmasq quiche
        echo "server=${doq_server}#53" >> /etc/dnsmasq.conf
        /etc/init.d/dnsmasq enable
        /etc/init.d/dnsmasq restart
        echo "DNS over QUIC setup completed with server ${doq_server}."
        ;;
    2)
        echo "Uninstallation selected."
        sed -i '/^server=/d' /etc/dnsmasq.conf
        opkg remove dnsmasq quiche
        /etc/init.d/dnsmasq disable
        /etc/init.d/dnsmasq stop
        echo "DNS over QUIC setup removed."
        ;;
    *)
        echo "Invalid choice. Exiting."
        exit 1
        ;;
esac
