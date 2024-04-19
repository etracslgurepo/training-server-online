@echo off

title Apply-LGU-Data Script

mysql -u root -p  < set-lgu-data.sql
