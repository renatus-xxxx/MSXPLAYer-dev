@echo off
setlocal enabledelayedexpansion

:: Retrieve the Steam installation path from the registry
for /f "tokens=2*" %%a in ('reg query "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Valve\Steam" /v "InstallPath" 2^>nul') do set "STEAM_PATH=%%b"

if not defined STEAM_PATH (
    for /f "tokens=2*" %%a in ('reg query "HKEY_LOCAL_MACHINE\SOFTWARE\Valve\Steam" /v "InstallPath" 2^>nul') do set "STEAM_PATH=%%b"
)

if not defined STEAM_PATH (
    echo Steam installation path not found.
    goto :EOF
)

:: Get additional library paths from libraryfolders.vdf
set "LIBRARY_VDF=%STEAM_PATH%\steamapps\libraryfolders.vdf"
set "STEAM_LIBRARIES=%STEAM_PATH%\steamapps"

if exist "%LIBRARY_VDF%" (
    for /f "tokens=1,2 delims== " %%A in ('type "!file!"') do (
        set "key=%%A"
        set "value=%%B"

        echo Key: !key!, Value: !value!
    )
)

:: Set environment variable temporarily
set STEAM_LIBRARY_PATHS=%STEAM_LIBRARIES%

echo Steam library paths have been temporarily set in the environment variable STEAM_LIBRARY_PATHS:
echo %STEAM_LIBRARIES%
pause

endlocal