@echo off
cd /d %~dp0
set "new_path=%CD%\bin\file2sav"
set PATH="%new_path%";%PATH%
file2sav "%userprofile%\AppData\Roaming\MSX Association\MSXPLAYer\�A�X�L�[�J���c�[���Y(tR).sav" @RESPONSE.TXT
taskkill /F /IM "�A�X�L�[�J���c�[���Y(tR).exe"
start "" "C:\Program Files (x86)\ASCII\MSX�}�K�W���i�v�ۑ���3\�A�X�L�[�J���c�[���Y(tR).exe"
