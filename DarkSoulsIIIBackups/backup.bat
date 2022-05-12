@echo off 

timeout /t 3 /nobreak >nul

if exist DarkSoulsIII (
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
rmdir /S /Q DarkSoulsIII
echo Partida eliminada
timeout /t 3 /nobreak >nul
) else (
echo No existen partidas respaldadas
timeout /t 2 /nobreak >nul
)

cls

echo Copiando partida actual del equipo
timeout /t 3 /nobreak >nul
robocopy "C:\Users\%USERNAME%\AppData\Roaming\DarkSoulsIII" "%cd%\DarkSoulsIII" /E
echo Mostrando datos de la copia realizada
pause

if exist DarkSoulsIII (
powershell -WindowStyle hidden -Command "[reflection.assembly]::loadwithpartialname('System.Windows.Forms');[reflection.assembly]::loadwithpartialname('System.Drawing');$notify = new-object system.windows.forms.notifyicon;$notify.icon = [System.Drawing.SystemIcons]::Information;$notify.visible = $true;$notify.showballoontip(10,'DarkSoulsIII Backup','La partida se ha respaldado',[system.windows.forms.tooltipicon]::None)"
) else (
powershell -WindowStyle hidden -Command "[reflection.assembly]::loadwithpartialname('System.Windows.Forms');[reflection.assembly]::loadwithpartialname('System.Drawing');$notify = new-object system.windows.forms.notifyicon;$notify.icon = [System.Drawing.SystemIcons]::Information;$notify.visible = $true;$notify.showballoontip(10,'DarkSoulsIII Backup','Ha ocurrido un error',[system.windows.forms.tooltipicon]::None)"
)
exit