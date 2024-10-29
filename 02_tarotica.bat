@echo off
cd /d %~dp0
for /f "tokens=2*" %%i in ('reg query "HKCU\Software\Valve\Steam" /v SteamPath 2^>nul ^| findstr SteamPath') do set SteamPath=%%j
if "%SteamPath%"=="" (
  echo Steam installation path not found.
  exit /b 1
)
echo Steam installation path found.: %SteamPath%
