@setlocal enabledelayedexpansion
@echo off

call check_env.bat || exit /b !errorlevel!

if [%BUILD_ALT_DIR%] == [] goto :ddk_not_set
if [%_BUILDARCH%] == [] goto :ddk_not_set

if not exist %root%\sign.bat (
  echo Error: %solution_root%\sign.bat is missing ^(don^'t know how to sign drivers^)
  exit /b 1
)

where build.exe >nul || goto :build_not_found
exit /b 0

:ddk_not_set
echo Error: either %%BUILD_ALT_DIR%% or %%_BUILDARCH%% are not set ^(perhaps you forgot to set up the WinDDK environment^)
exit /b 1

:build_not_found
echo Error: build.exe not found ^(perhaps you forgot to set up the WinDDK environment^)
exit /b 1
