@echo off
set /p username="Enter steam username (See README - Getting Steam Username): "

echo[
echo [34mDownloading 'Executable' depot... (372.73 MB)
echo Depotdownloader will ask for your steam password and two factor code (if enabled)[0m
echo[

dotnet depotdownloader.dll -username %username% -app 750920 -depot 750922 -manifest 2219388415274858918 -remember-password

echo [34mDownloading 'Game Content' depot... this will take some time (32.28 GB)
echo If this window seems to freeze, it is usually because Depotdownloader is downloading a large file and won't update until it has downloaded it[0m
echo[

dotnet depotdownloader.dll -username %username% -app 750920 -depot 750921 -manifest 8459423090294301784 -remember-password

echo [34mDownloading 'Game Content English' depot... (2.23 GB)[0m
echo[

dotnet depotdownloader.dll -username %username% -app 750920 -depot 750924 -manifest 6877456504163670553 -remember-password

echo [34mDownloading 'Game Content WWW SKU` depot... (313.28 MB)[0m
echo[

dotnet depotdownloader.dll -username %username% -app 750920 -depot 792469 -manifest 3807273669866873107 -remember-password