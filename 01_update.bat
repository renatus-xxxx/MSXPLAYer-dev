@echo off
cd /d %~dp0

set "EXE_PATH=C:\Program Files (x86)\ASCII\MSXマガジン永久保存版3\アスキー開発ツールズ(tR).exe"
set "SAV_PATH=%userprofile%\AppData\Roaming\MSX Association\MSXPLAYer\アスキー開発ツールズ(tR).sav"

if exist "%EXE_PATH%" (
  if exist "%SAV_PATH%" (
    bin\file2sav\file2sav.exe "%userprofile%\AppData\Roaming\MSX Association\MSXPLAYer\アスキー開発ツールズ(tR).sav" @RESPONSE.TXT
    taskkill /F /IM "アスキー開発ツールズ(tR).exe" >nul 2>&1
    start "" "%EXE_PATH%"
    taskkill /F /IM "savlist.exe" >nul 2>&1
    start "" "bin\savlist\savlist.exe" "%userprofile%\AppData\Roaming\MSX Association\MSXPLAYer\アスキー開発ツールズ(tR).sav"
    exit /b 0
  ) else (
    echo bat ファイルを書き換えて "アスキー開発ツールズ(tR).sav" へのフルパスを設定してください
    echo (例:"%userprofile%\AppData\Roaming\MSX Association\MSXPLAYer\アスキー開発ツールズ(tR).sav")
    pause
    exit /b 1
  )
) else (
  echo bat ファイルを書き換えて "アスキー開発ツールズ(tR).exe" へのフルパスを設定してください
  echo (例:"C:\Program Files (x86)\ASCII\MSXマガジン永久保存版3\アスキー開発ツールズ(tR).exe")
  pause
  exit /b 1
)
