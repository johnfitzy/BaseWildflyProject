#!/usr/bin/env bash
set -e

echo "Enabling epel repo"
yum --enablerepo=extras install -y epel-release

echo "Installing ansible"
yum install -y ansible

# java version causes problems if it updates
sudo sh -c  "echo export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.191.b12-1.el7_6.x86_64/jre >> /etc/environment"

echo "Configuring network"
sudo nmcli con del enp0s8 | true
sudo nmcli con add type ethernet ifname enp0s8 con-name enp0s8
sudo nmcli con mod enp0s8 ipv4.addresses '10.128.250.2,10.128.250.3,10.128.250.4,10.128.250.5,10.128.250.6' ipv4.method manual ipv4.routes 10.0.0.0/16
sudo systemctl restart network
