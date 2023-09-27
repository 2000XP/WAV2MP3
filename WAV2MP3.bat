@echo off
for %%f in (%*) do (
    ffmpeg -i "%%~nf.wav" -b:a 320k "%%~nf.mp3"
)