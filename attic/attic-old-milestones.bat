@echo off
cd /d "%~dp0"
echo Creating attic folder...
if not exist attic mkdir attic

echo Moving old milestone zips to attic...
if exist ow2_full_repo_2.zip move ow2_full_repo_2.zip attic\
if exist ow2_phase23_complete.tar.gz move ow2_phase23_complete.tar.gz attic\
if exist ow2irc-full-20261010_1.tar.gz move ow2irc-full-20261010_1.tar.gz attic\
if exist ow2irc-full-source-m1.zip move ow2irc-full-source-m1.zip attic\
if exist ow2irc-full-source-m2.zip move ow2irc-full-source-m2.zip attic\
if exist ow2irc-full-source-m3.zip move ow2irc-full-source-m3.zip attic\
if exist ow2irc-full-source-m4.zip move ow2irc-full-source-m4.zip attic\
if exist ow2irc-full-source-m4_1.zip move ow2irc-full-source-m4_1.zip attic\
if exist ow2irc-full-source-m5.zip move ow2irc-full-source-m5.zip attic\
if exist ow2irc-full-source-m6.zip move ow2irc-full-source-m6.zip attic\
if exist ow2irc-full-source-m8.zip move ow2irc-full-source-m8.zip attic\
if exist ow2irc-full-source-m8_1.zip move ow2irc-full-source-m8_1.zip attic\
if exist ow2irc-full-source-m8_2.zip move ow2irc-full-source-m8_2.zip attic\
if exist ow2irc-full-source-m8_3.zip move ow2irc-full-source-m8_3.zip attic\
if exist ow2irc-full-source-m8_4.zip move ow2irc-full-source-m8_4.zip attic\
if exist ow2irc-full-source-m8_5.zip move ow2irc-full-source-m8_5.zip attic\
if exist ow2irc-full-source-m9.zip move ow2irc-full-source-m9.zip attic\
if exist ow2irc-full-source-m9_1.zip move ow2irc-full-source-m9_1.zip attic\
if exist ow2irc-full-source-m10.zip move ow2irc-full-source-m10.zip attic\
if exist ow2irc-full-source-m10_1.zip move ow2irc-full-source-m10_1.zip attic\
if exist ow2irc-full-source-m10_2.zip move ow2irc-full-source-m10_2.zip attic\
if exist ow2irc-full-source-m10_3.zip move ow2irc-full-source-m10_3.zip attic\
if exist ow2irc-full-source-m11.zip move ow2irc-full-source-m11.zip attic\
if exist ow2irc-full-source-m11_1.zip move ow2irc-full-source-m11_1.zip attic\
if exist ow2irc-full-source-m13.zip move ow2irc-full-source-m13.zip attic\

echo Moving old binary-split parts to attic...
if exist ow2irc-full-source-m14.zip.part_aa move ow2irc-full-source-m14.zip.part_aa attic\
if exist ow2irc-full-source-m14.zip.part_ab move ow2irc-full-source-m14.zip.part_ab attic\
if exist ow2irc-full-source-m14.zip.part_ac move ow2irc-full-source-m14.zip.part_ac attic\
if exist ow2irc-full-source-m14.zip.part_ad move ow2irc-full-source-m14.zip.part_ad attic\

echo Moving old checksum file to attic...
if exist ow2irc-full-source-m14.zip.checksum.txt move ow2irc-full-source-m14.zip.checksum.txt attic\

echo.
echo Done. Current m14 spanned parts and checksum remain in place.
echo Attic contents:
dir /b attic\
pause
