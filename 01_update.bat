@echo off
cd /d %~dp0

set "EXE_PATH=C:\Program Files (x86)\ASCII\MSX�}�K�W���i�v�ۑ���3\�A�X�L�[�J���c�[���Y(tR).exe"
set "SAV_PATH=%userprofile%\AppData\Roaming\MSX Association\MSXPLAYer\�A�X�L�[�J���c�[���Y(tR).sav"

if exist "%EXE_PATH%" (
  if exist "%SAV_PATH%" (
    bin\file2sav\file2sav.exe "%userprofile%\AppData\Roaming\MSX Association\MSXPLAYer\�A�X�L�[�J���c�[���Y(tR).sav" @RESPONSE.TXT
    taskkill /F /IM "�A�X�L�[�J���c�[���Y(tR).exe" >nul 2>&1
    start "" "%EXE_PATH%"
    taskkill /F /IM "savlist.exe" >nul 2>&1
    start "" "bin\savlist\savlist.exe" "%userprofile%\AppData\Roaming\MSX Association\MSXPLAYer\�A�X�L�[�J���c�[���Y(tR).sav"
    exit /b 0
  ) else (
    echo bat �t�@�C�������������� "�A�X�L�[�J���c�[���Y(tR).sav" �ւ̃t���p�X��ݒ肵�Ă�������
    echo (��:"%userprofile%\AppData\Roaming\MSX Association\MSXPLAYer\�A�X�L�[�J���c�[���Y(tR).sav")
    pause
    exit /b 1
  )
) else (
  echo bat �t�@�C�������������� "�A�X�L�[�J���c�[���Y(tR).exe" �ւ̃t���p�X��ݒ肵�Ă�������
  echo (��:"C:\Program Files (x86)\ASCII\MSX�}�K�W���i�v�ۑ���3\�A�X�L�[�J���c�[���Y(tR).exe")
  pause
  exit /b 1
)
