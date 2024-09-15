@echo off
setlocal EnableDelayedExpansion

:menu
cls
echo ***********************************************
echo *** Ejercicio elaborado por el equipo Apolo ***
echo ******************* 4CV3 **********************
echo ***********************************************
echo ===============================================
echo               MENU DE OPCIONES
echo ===============================================
echo 1. Ordenar numeros de menor a mayor
echo 2. Ordenar numeros de mayor a menor
echo =====================================
set /p opcion="Elija una opcion (1 o 2): "

if "%opcion%"=="1" goto menor_mayor
if "%opcion%"=="2" goto mayor_menor
goto menu

:menor_mayor
cls
echo Ingrese varios numeros separados por espacios:
set /p input="Numeros: "

:: Convertimos los numeros en una lista
set i=0
for %%a in (%input%) do (
    set /a i+=1
    set num[!i!]=%%a
)

:: Ordenamiento burbuja de menor a mayor
for /l %%x in (1,1,!i!) do (
    for /l %%y in (1,1,!i!) do (
        if !num[%%x]! lss !num[%%y]! (
            set temp=!num[%%x]!
            set num[%%x]=!num[%%y]!
            set num[%%y]=!temp!
        )
    )
)

:: Mostrar los numeros ordenados
echo.
echo Numeros ordenados de menor a mayor:
for /l %%z in (1,1,!i!) do (
    echo !num[%%z]!
)
pause
goto menu


:mayor_menor
cls
echo Ingrese varios numeros separados por espacios:
set /p input="Numeros: "

:: Convertimos los numeros en una lista
set i=0
for %%a in (%input%) do (
    set /a i+=1
    set num[!i!]=%%a
)

:: Ordenamiento burbuja de mayor a menor
for /l %%x in (1,1,!i!) do (
    for /l %%y in (1,1,!i!) do (
        if !num[%%y]! lss !num[%%x]! (
            set temp=!num[%%y]!
            set num[%%y]=!num[%%x]!
            set num[%%x]=!temp!
        )
    )
)

:: Mostrar los numeros ordenados
echo.
echo Numeros ordenados de mayor a menor:
for /l %%z in (1,1,!i!) do (
    echo !num[%%z]!
)
pause
goto menu
