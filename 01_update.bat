@echo off
cd /d %~dp0
set "new_path=%CD%\bin\file2sav"
set PATH="%new_path%";%PATH%
file2sav "%userprofile%\AppData\Roaming\MSX Association\MSXPLAYer\アスキー開発ツールズ(tR).sav" @RESPONSE.TXT
taskkill /F /IM "アスキー開発ツールズ(tR).exe"
start "" "C:\Program Files (x86)\ASCII\MSXマガジン永久保存版3\アスキー開発ツールズ(tR).exe"
