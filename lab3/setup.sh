#!/bin/bash
echo "Starting KWASU server setup..."
mkdir backend frontend config
touch backend/app.py
touch frontend/index.html
touch config/settings.conf
cp config/settings.conf config/settings_backup.conf
cp -r backend backend_backup
mv config/settings.conf backend/
mkdir temp
mv backend frontend config backend_backup temp/
uptime
echo "Setup complete"
