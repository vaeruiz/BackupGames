@echo off 

echo Iniciando
timeout /t 2 /nobreak >nul

cls

if exist "StardewValley" (
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
rmdir /S /Q "StardewValley"
echo Partida eliminada
timeout /t 3 /nobreak >nul
) else (
echo No existen partidas respaldadas
timeout /t 2 /nobreak >nul
)

if exist "Mods" (
echo Eliminando ultimos mods respaldados
timeout /t 1 /nobreak >nul
cls
echo Eliminando ultimos mods respaldados
timeout /t 1 /nobreak >nul
cls
echo Eliminando ultimos mods respaldados
timeout /t 1 /nobreak >nul
cls
echo Eliminando ultimos mods respaldados
timeout /t 1 /nobreak >nul
cls
rmdir /S /Q "Mods"
echo Mods eliminados
timeout /t 3 /nobreak >nul
) else (
echo No existen mods respaldados
timeout /t 2 /nobreak >nul
)

if exist "Mods_off" (
echo Eliminando ultimos mods off respaldados
timeout /t 1 /nobreak >nul
cls
echo Eliminando ultimos mods off respaldados
timeout /t 1 /nobreak >nul
cls
echo Eliminando ultimos mods off respaldados
timeout /t 1 /nobreak >nul
cls
echo Eliminando ultimos mods off respaldados
timeout /t 1 /nobreak >nul
cls
rmdir /S /Q "Mods_off"
echo Mods_off eliminados
timeout /t 3 /nobreak >nul
) else (
echo No existen mods off respaldados
timeout /t 2 /nobreak >nul
)

cls

echo Copiando partida y mods actuales del equipo
timeout /t 3 /nobreak >nul
robocopy "C:\Users\%USERNAME%\AppData\Roaming\StardewValley" "%cd%\StardewValley" /E
robocopy "F:\SteamLibrary\steamapps\common\Stardew Valley\Mods" "%cd%\Mods" /E
robocopy "F:\SteamLibrary\steamapps\common\Stardew Valley\Mods_off" "%cd%\Mods_off" /E
echo Mostrando datos de la copia realizada
pause

if exist "StardewValley" (
powershell -WindowStyle hidden -Command "[reflection.assembly]::loadwithpartialname('System.Windows.Forms');[reflection.assembly]::loadwithpartialname('System.Drawing');$notify = new-object system.windows.forms.notifyicon;$notify.icon = [System.Drawing.SystemIcons]::Information;$notify.visible = $true;$notify.showballoontip(10,'StardewValley Backup','La partida se ha respaldado',[system.windows.forms.tooltipicon]::None)"
) else (
powershell -WindowStyle hidden -Command "[reflection.assembly]::loadwithpartialname('System.Windows.Forms');[reflection.assembly]::loadwithpartialname('System.Drawing');$notify = new-object system.windows.forms.notifyicon;$notify.icon = [System.Drawing.SystemIcons]::Information;$notify.visible = $true;$notify.showballoontip(10,'StardewValley Backup','Ha ocurrido un error',[system.windows.forms.tooltipicon]::None)"
)

if exist "Mods" (
powershell -WindowStyle hidden -Command "[reflection.assembly]::loadwithpartialname('System.Windows.Forms');[reflection.assembly]::loadwithpartialname('System.Drawing');$notify = new-object system.windows.forms.notifyicon;$notify.icon = [System.Drawing.SystemIcons]::Information;$notify.visible = $true;$notify.showballoontip(10,'StardewValley Mods Backup','La carpeta mods se ha respaldado',[system.windows.forms.tooltipicon]::None)"
) else (
powershell -WindowStyle hidden -Command "[reflection.assembly]::loadwithpartialname('System.Windows.Forms');[reflection.assembly]::loadwithpartialname('System.Drawing');$notify = new-object system.windows.forms.notifyicon;$notify.icon = [System.Drawing.SystemIcons]::Information;$notify.visible = $true;$notify.showballoontip(10,'StardewValley Mods Backup','Ha ocurrido un error',[system.windows.forms.tooltipicon]::None)"
)

if exist "Mods_off" (
powershell -WindowStyle hidden -Command "[reflection.assembly]::loadwithpartialname('System.Windows.Forms');[reflection.assembly]::loadwithpartialname('System.Drawing');$notify = new-object system.windows.forms.notifyicon;$notify.icon = [System.Drawing.SystemIcons]::Information;$notify.visible = $true;$notify.showballoontip(10,'StardewValley Mods_off Backup','La carpeta Mods_off se ha respaldado',[system.windows.forms.tooltipicon]::None)"
) else (
powershell -WindowStyle hidden -Command "[reflection.assembly]::loadwithpartialname('System.Windows.Forms');[reflection.assembly]::loadwithpartialname('System.Drawing');$notify = new-object system.windows.forms.notifyicon;$notify.icon = [System.Drawing.SystemIcons]::Information;$notify.visible = $true;$notify.showballoontip(10,'StardewValley Mods_off Backup','Ha ocurrido un error',[system.windows.forms.tooltipicon]::None)"
)

exit