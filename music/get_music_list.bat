@ECHO OFF
REM Enable nested for loops
SetLocal EnableDelayedExpansion

echo Fetching lists of files in each music subfolder...
break > .\music_library.js

set /a counter=0

REM Append any additional subfolder lists
echo|set /p="var musiclist = [" >> .\music_library.js
for /D %%i in (*.*) do (
  if !counter! == 0 (
    set /a counter=counter+1
    echo Checking %%i subfolder
    echo|set /p="[" >> .\music_library.js
REM    echo|set /p=""subfolder_%%i"" >> .\music_library.js
    echo|set /p=""%%i"" >> .\music_library.js
    for /r . %%g in (.\%%i\*) do echo|set /p=", "%%i/%%~nxg"" >> .\music_library.js
    echo|set /p="]" >> .\music_library.js
  ) else (
    echo , >> .\music_library.js
    set /a counter=counter+1
    echo Checking %%i subfolder
    echo|set /p="[" >> .\music_library.js
    echo|set /p=""%%i"" >> .\music_library.js
    for /r . %%g in (.\%%i\*) do echo|set /p=", "%%i/%%~nxg"" >> .\music_library.js
    echo|set /p="]" >> .\music_library.js
  )
)
echo ]; >> .\music_library.js

echo var nrlibrary = !counter!; >> .\music_library.js


REM REM Append any additional subfolder lists
REM for /D %%i in (*.*) do (
REM   set /a counter=counter+1
REM   echo Checking %%i subfolder
REM   echo|set /p="var list!counter! = [" >> .\music_library.js
REM   echo|set /p=""subfolder_%%i"" >> .\music_library.js
REM   for /r . %%g in (.\%%i\*) do echo|set /p=", "%%i/%%~nxg"" >> .\music_library.js
REM   echo ]; >> .\music_library.js
REM )
REM 
REM echo var nrlibrary = !counter!; >> .\music_library.js

goto EXIT
:EXIT
echo Press any key to exit...
pause>null

REM REM These are comments
REM echo Fetching a list of files in each music subfolder...
REM break > .\ambient_list.txt
REM break > .\battle_list.txt
REM break > .\creepy_list.txt
REM break > .\tavern_list.txt
REM break > .\temple_list.txt
REM break > .\town_list.txt
REM REM Append any additional subfolder lists, if new music subfolder is made
REM 
REM echo Checking .\ambient subfolder
REM for /r . %%g in (.\ambient\*) do echo %%~nxg >> .\ambient_list.txt
REM echo Checking .\battle subfolder
REM for /r . %%g in (.\battle\*) do echo %%~nxg >> .\battle_list.txt
REM echo Checking .\creepy subfolder
REM for /r . %%g in (.\creepy\*) do echo %%~nxg >> .\creepy_list.txt
REM echo Checking .\tavern subfolder
REM for /r . %%g in (.\tavern\*) do echo %%~nxg >> .\tavern_list.txt
REM echo Checking .\temple subfolder
REM for /r . %%g in (.\temple\*) do echo %%~nxg >> .\temple_list.txt
REM echo Checking .\town subfolder
REM for /r . %%g in (.\town\*) do echo %%~nxg >> .\town_list.txt
REM 
REM goto EXIT
REM :EXIT
REM ECHO Press any key to exit...
REM pause>null
