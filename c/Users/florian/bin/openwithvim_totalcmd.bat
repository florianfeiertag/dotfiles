@echo on & setlocal
rem chcp 1252>nul
chcp 65001>nul
set DATEI="%~1"
rem c:\Users\Florian\AppData\Local\wsltty\bin\mintty.exe --WSL="Debian" --configdir="C:\Users\Florian\AppData\Roaming\wsltty" -t "%1" -e bash --login -c "vim \"$(wslpath '%1')\""
set DATEI=%DATEI:"='%
c:\Users\Florian\AppData\Local\wsltty\bin\mintty.exe --WSL="Debian" --configdir="C:\Users\Florian\AppData\Roaming\wsltty" -t "%~1" -e bash --login -c "vim \"$(wslpath %DATEI%)\""
rem echo %DATEI%
