@echo off
cd /d %~dp0
bin\file2sav\file2sav.exe "%userprofile%\AppData\Roaming\MSX Association\MSXPLAYer\アスキー開発ツールズ(tR).sav" @RESPONSE.TXT
taskkill /F /IM "アスキー開発ツールズ(tR).exe"
start "" "C:\Program Files (x86)\ASCII\MSXマガジン永久保存版3\アスキー開発ツールズ(tR).exe"
taskkill /F /IM "savlist.exe"
start "" "bin\savlist\savlist.exe" "%userprofile%\AppData\Roaming\MSX Association\MSXPLAYer\アスキー開発ツールズ(tR).sav"
