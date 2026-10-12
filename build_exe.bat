@echo off
rem Dong goi agy_swap.py thanh dist\NCT AI Connect.exe (bam dup la chay, khong hien cua so den).
rem Can Python + PyInstaller tren may build:  py -m pip install --user pyinstaller
cd /d "%~dp0"
py -m PyInstaller --noconfirm --onefile --noconsole --name "NCT AI Connect" --icon "%~dp0app.ico" --distpath "%~dp0dist" --workpath "%TEMP%\nct-ai-connect-build" --specpath "%TEMP%\nct-ai-connect-build" agy_swap.py
echo.
echo Xong: %~dp0dist\NCT AI Connect.exe
pause
