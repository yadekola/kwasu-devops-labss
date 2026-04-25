#!/bin/bash
echo "Sterting KWASU Recovery..."

mkdir backend frontend config
touch backend/app.py
touch frontend/index.html
touch config/settings.conf
cp config/settings.conf config/settings_backup.conf
cp -r backend backend_backup
mv config/settings.conf backend
mkdir release
mv backend frontend config backend_backup release
cd release
rm config/settings_backup.conf
rm -rf backend_backup
uptime
echo "Recovery Complete"
