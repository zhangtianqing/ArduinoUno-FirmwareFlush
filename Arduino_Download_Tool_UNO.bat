@echo off
title Arduino UNO Download Tool
set hideform=False
set "COMName=3" 
set /p COMName=Type the COM Index:
avrdude "-C.\config\avrdude.conf" -v -V -patmega328p -carduino "-PCOM%COMName%" -b115200 -D "-Uflash:w:.\firmware\firework.hex:i"
echo Upload Finish
pause