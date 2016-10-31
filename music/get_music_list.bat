@ECHO OFF
REM These are comments
echo Fetching a list of files in each music subfolder...
break > .\ambient_list.txt
break > .\battle_list.txt
break > .\creepy_list.txt
break > .\tavern_list.txt
break > .\temple_list.txt
break > .\town_list.txt
REM Append any additional subfolder lists, if new music subfolder is made

echo Checking .\ambient subfolder
for /r . %%g in (.\ambient\*) do echo %%~nxg >> .\ambient_list.txt
echo Checking .\battle subfolder
for /r . %%g in (.\battle\*) do echo %%~nxg >> .\battle_list.txt
echo Checking .\creepy subfolder
for /r . %%g in (.\creepy\*) do echo %%~nxg >> .\creepy_list.txt
echo Checking .\tavern subfolder
for /r . %%g in (.\tavern\*) do echo %%~nxg >> .\tavern_list.txt
echo Checking .\temple subfolder
for /r . %%g in (.\temple\*) do echo %%~nxg >> .\temple_list.txt
echo Checking .\town subfolder
for /r . %%g in (.\town\*) do echo %%~nxg >> .\town_list.txt

goto EXIT
:EXIT
ECHO Press any key to exit...
pause>null
