@echo off
TITLE %~n0
cls

set ENGINEPATH=%1%
set ENGINEPATH=%ENGINEPATH:"=%
set INSTALLDIR=%2%
set INSTALLDIR=%INSTALLDIR:"=%
set RELEASENAME=%3%
set PLATFORM=WindowsNoEditor

echo Engine Path is %ENGINEPATH%

set PAKFILE=%INSTALLDIR%\%PLATFORM%\Pandemic\Content\Paks\pakchunk0-%PLATFORM%.pak
echo Extracting asset registry from %PAKFILE%
"%ENGINEPATH%\Engine\Binaries\Win64\UnrealPak.exe" "%PAKFILE%" -Extract "%cd%\Extract" -filter=*AssetRegistry.bin

set "RELEASEFOLDER=%cd%\Releases\%RELEASENAME%\%PLATFORM%"
set "METADATAFILE=%RELEASEFOLDER:"=%\Metadata\DevelopmentAssetRegistry.bin"

echo Creating release Folder "%RELEASEFOLDER%"
mkdir "%RELEASEFOLDER%"
mkdir "%RELEASEFOLDER%\Metadata"

echo Copying Asset Registry from extracted files into release folder
copy "%cd%\Extract\Pandemic\AssetRegistry.bin" "%RELEASEFOLDER%"
copy /y "%cd%\Extract\Pandemic\AssetRegistry.bin" "%METADATAFILE%"