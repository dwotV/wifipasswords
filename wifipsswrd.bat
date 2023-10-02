@echo off
netsh wlan show profiles > resultado_wifi.txt
start notepad resultado_wifi.txt

setlocal enabledelayedexpansion

set "output_file=perfiles_wifi.txt"
set "search_string=:"

REM Eliminar el archivo de salida si ya existe
if exist "%output_file%" del "%output_file%"

REM Leer el archivo "resultado_wifi.txt" línea por línea
for /F "usebackq delims=" %%a in ("resultado_wifi.txt") do (
    REM Buscar las líneas que contienen el carácter ":"
    echo %%a | findstr /C:"%search_string%" >nul
    if !errorlevel! equ 0 (
        REM Extraer el texto después de los dos puntos y guardarlo en el archivo de salida
        for /F "tokens=2 delims=:" %%b in ("%%a") do (
            set "profile=%%b"
            set "profile=!profile: =!"
            echo !profile! >> "%output_file%"
        )
    )
)

REM Mostrar un mensaje cuando se haya completado el proceso
echo Extracción de perfiles completada. Los perfiles se han guardado en "%output_file%".

REM Abrir el archivo de salida
start notepad "%output_file%"



setlocal enabledelayedexpansion

set "input_file=perfiles_wifi.txt"
set "output_file=perfiles_wifi_sin_espacios.txt"

REM Eliminar el archivo de salida si ya existe
if exist "%output_file%" del "%output_file%"

REM Leer el archivo de entrada
for /F "usebackq delims=" %%a in ("%input_file%") do (
    REM Eliminar los espacios en blanco y guardar el texto sin espacios en el archivo de salida
    set "line=%%a"
    set "line=!line: =!"
    echo !line!>> "%output_file%"
)

REM Mostrar un mensaje cuando se haya completado el proceso
echo Eliminación de espacios completada. El archivo sin espacios se ha guardado en "%output_file%".




@echo off
setlocal enabledelayedexpansion

set "input_file=perfiles_wifi_sin_espacios.txt"
set "output_file=resultados_wifi.txt"

REM Eliminar el archivo de salida si ya existe
if exist "%output_file%" del "%output_file%"

REM Leer el archivo de entrada
for /F "usebackq delims=" %%a in ("%input_file%") do (
    set "profile=%%a"
    
    REM Ejecutar el comando para el perfil actual
    netsh wlan show profile name="!profile!" key=clear >> "%output_file%"
    
    REM Agregar una línea en blanco para separar los resultados de los perfiles
    echo. >> "%output_file%"
)

REM Mostrar un mensaje cuando se haya completado el proceso
echo Obtención de resultados completada. Los resultados se han guardado en "%output_file%".
