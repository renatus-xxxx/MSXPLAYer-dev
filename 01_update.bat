@echo off
cd /d %~dp0
bin\file2sav\file2sav.exe "%userprofile%\AppData\Roaming\MSX Association\MSXPLAYer\�A�X�L�[�J���c�[���Y(tR).sav" @RESPONSE.TXT
taskkill /F /IM "�A�X�L�[�J���c�[���Y(tR).exe"
start "" "C:\Program Files (x86)\ASCII\MSX�}�K�W���i�v�ۑ���3\�A�X�L�[�J���c�[���Y(tR).exe"
taskkill /F /IM "savlist.exe"
start "" "bin\savlist\savlist.exe" "%userprofile%\AppData\Roaming\MSX Association\MSXPLAYer\�A�X�L�[�J���c�[���Y(tR).sav"
