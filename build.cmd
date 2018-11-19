@echo off
set CXPATH=C:\Electro\MCU\STM8\Cosmic\CXSTM8
%CXPATH%\castm8 -o bms.o -i %CXPATH%\HSTM8 -l bms.s
if errorlevel 1 goto bad
:clink
echo.
echo Linking ...
%CXPATH%\clnk -o bms.sm8 -m bms.map bms.ld
if errorlevel 1 goto bad
:chexa
echo.
echo Converting ...
%CXPATH%\chex -fh -o bms.hex bms.sm8
if errorlevel 1 goto bad
:cllabs
echo.
echo Generating absolute listing ...
%CXPATH%\clabs bms.sm8
if errorlevel 1 goto bad
rem hex2bin bms.hex
echo.
echo.
echo        Done
echo.
pause
goto sortie
:bad
echo Build failed !
:sortie
echo on
