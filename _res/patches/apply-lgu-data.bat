@echo off

title Apply-LGU-Data Script

mysql -u root -p -P3306 < set-lgu-data.sql

pause