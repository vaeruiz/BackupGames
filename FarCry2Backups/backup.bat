@echo off 

echo Iniciando
timeout /t 2 /nobreak >nul

cls

if exist "Far Cry 2" (
echo Eliminando ultima partida respaldada
timeout /t 1 /nobreak >nul
cls
echo Eliminando ultima partida respaldada.
timeout /t 1 /nobreak >nul
cls
echo Eliminando ultima partida respaldada..
timeout /t 1 /nobreak >nul
cls
echo Eliminando ultima partida respaldada...
timeout /t 1 /nobreak >nul
cls
rmdir /S /Q "Far Cry 2"
echo Partida eliminada
timeout /t 3 /nobreak >nul
) else (
echo No existen partidas respaldadas
timeout /t 2 /nobreak >nul
)

cls

echo Copiando partida actual del equipo
timeout /t 3 /nobreak >nul
robocopy "C:\Users\%USERNAME%\Documents\My Games\Far Cry 2" "%cd%\Far Cry 2" /E
echo Mostrando datos de la copia realizada
pause

if exist "Far Cry 2" (
powershell -WindowStyle hidden -Command "[reflection.assembly]::loadwithpartialname('System.Windows.Forms');[reflection.assembly]::loadwithpartialname('System.Drawing');$notify = new-object system.windows.forms.notifyicon;$notify.icon = [System.Drawing.SystemIcons]::Information;$notify.visible = $true;$notify.showballoontip(10,'Far Cry 2 backup','La partida se ha respaldado',[system.windows.forms.tooltipicon]::None)"
) else (
powershell -WindowStyle hidden -Command "[reflection.assembly]::loadwithpartialname('System.Windows.Forms');[reflection.assembly]::loadwithpartialname('System.Drawing');$notify = new-object system.windows.forms.notifyicon;$notify.icon = [System.Drawing.SystemIcons]::Information;$notify.visible = $true;$notify.showballoontip(10,'Far Cry 2','Ha ocurrido un error',[system.windows.forms.tooltipicon]::None)"
)
exit