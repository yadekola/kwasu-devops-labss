#!/bin/bash
echo "Starting KWASU service check..."
cat /etc/os-release
systemctl status httpd --no-pager
sudo systemctl start httpd
sudo systemctl restart httpd
sudo systemctl enable httpd
systemctl is-active httpd
systemctl is-enabled httpd
systemctl status sshd --no-pager
systemctl cat httpd
echo "Done"
chmod +x service-check.sh
./service-check.sh
./service-check.sh > service-check.log
cat service-check.log
