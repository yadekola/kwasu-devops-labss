#!/bin/bash



ls /etc/passwd | wc -l > auto_report.txt
cut -d: -f1 /etc/passwd >> auto_report.txt
ls /etc | wc -l >> auto_report.txt
find host /etc | grep -i host >> auto_report.txt
tail -10 /etc/passwd >> auto_report.txt
locate error | tail -20 | grep -i error >> auto_report.txt
grep vagrant /etc/passwd >> auto_report.txt
free -m | grep Mem >> auto_report.txt
tail -5 /etc/passwd >> auto_report.txt
head -5 /etc/passwd >> auto_report.txt
