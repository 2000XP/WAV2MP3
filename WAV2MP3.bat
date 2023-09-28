@echo off
setlocal enabledelayedexpansion
set BATCH_PATH=%~dp0
set PATH=%PATH%;%BATCH_PATH%

for %%f in (%*) do (
    .\bin\ffmpeg -i "%%~f" -b:a 320k "%%~dpnf.mp3"
)
