@echo off

title Apply-File-Loc-URL Script

mysql -u root -p -P3306 < set-file-loc-url.sql

pause