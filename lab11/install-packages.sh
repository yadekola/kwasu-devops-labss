#!/bin/bash
echo "Starting package installation..."
cat /etc/os-release
arch
uname -m
sudo yum upgrade -y
sudo dnf install telnet -y
sudo dnf install httpd -y
rpm -qa | grep telnet
dnf repolist
dnf history
echo "Installation complete."
Make executable:
chmod +x install-packages.sh
Run:
./install-packages.sh
(Optional log):
./install-packages.sh > install-log.txt
IMPORTANT:
Always check script before running:
cat install-packages.sh

