::
:: Panoptes Operator | operator@panoptes.live
::
:: June 17, 2020 | January 19, 2023
::
:: ▲ OneBat for Panoptes
::


:: Clear terminal, Hide command prompt, Set Working directory, Name terminal window
CLS
SET "current_directory=%cd%"
@ECHO OFF


:: Basis of 'all' menus
:menuBase
SET activeMenu=menuRoot
SET menuConsoleTitle=OB Argus Panoptes
SET invalidchoice=false

SET menuTitleLong=A Long descriptive Title
SET menuInfo=Extra Information that may be desired

SET menuOption0target=menuRoot

SET menuOption1label=
SET menuOption1target=
SET menuOption1comment=
SET menuOption1active=false

SET menuOption2label=
SET menuOption2target=
SET menuOption2comment=
SET menuOption2active=false

SET menuOption3label=
SET menuOption3target=
SET menuOption3comment=
SET menuOption3active=false

SET menuOption4label=
SET menuOption4target=
SET menuOption4comment=
SET menuOption4active=false

SET menuOption5label=
SET menuOption5target=
SET menuOption5comment=
SET menuOption5active=false

SET menuOption6label=
SET menuOption6target=
SET menuOption6comment=
SET menuOption6active=false

SET menuOption7label=
SET menuOption7target=
SET menuOption7comment=
SET menuOption7active=false

SET menuOption8label=
SET menuOption8target=
SET menuOption8comment=
SET menuOption8active=false

SET menuOption9label=
SET menuOption9target=
SET menuOption9comment=
SET menuOption9active=false
:: End Base Menu

GOTO menuRoot

:: Running Menu
:menuRun
TITLE %menuConsoleTitle%
CLS
ECHO.
ECHO %menuTitleLong% && ECHO.
ECHO.
IF "%menuOption1active%"=="true" ECHO 1^> %menuOption1label% && IF NOT "%menuOption1comment%"=="" ECHO. ^\ %menuOption1comment% && ECHO.
IF "%menuOption2active%"=="true" ECHO 2^> %menuOption2label% && IF NOT "%menuOption2comment%"=="" ECHO. ^\ %menuOption2comment% && ECHO.
IF "%menuOption3active%"=="true" ECHO 3^> %menuOption3label% && IF NOT "%menuOption3comment%"=="" ECHO. ^\ %menuOption3comment% && ECHO.
IF "%menuOption4active%"=="true" ECHO 4^> %menuOption4label% && IF NOT "%menuOption4comment%"=="" ECHO. ^\ %menuOption4comment% && ECHO.
IF "%menuOption5active%"=="true" ECHO 5^> %menuOption5label% && IF NOT "%menuOption5comment%"=="" ECHO. ^\ %menuOption5comment% && ECHO.
IF "%menuOption6active%"=="true" ECHO 6^> %menuOption6label% && IF NOT "%menuOption6comment%"=="" ECHO. ^\ %menuOption6comment% && ECHO.
IF "%menuOption7active%"=="true" ECHO 7^> %menuOption7label% && IF NOT "%menuOption7comment%"=="" ECHO. ^\ %menuOption7comment% && ECHO.
IF "%menuOption8active%"=="true" ECHO 8^> %menuOption8label% && IF NOT "%menuOption8comment%"=="" ECHO. ^\ %menuOption8comment% && ECHO.
IF "%menuOption9active%"=="true" ECHO 9^> %menuOption9label% && IF NOT "%menuOption9comment%"=="" ECHO. ^\ %menuOption9comment% && ECHO.

ECHO.
IF "%invalidchoice%"=="false" echo Please enter your choice:
IF "%invalidchoice%"=="true" echo Please enter your choice: (Invalid choice. Try again) && SET invalidchoice=false

SET /p choice=

IF "%choice%"=="plant" GOTO plant
IF "%choice%"=="0" GOTO menuRoot
IF "%choice%"=="1" GOTO menuInit
IF "%choice%"=="2" GOTO menuInstall
IF "%choice%"=="3" GOTO menuOperator
IF "%choice%"=="4" GOTO menuRoot
IF "%choice%"=="5" GOTO menuRoot
IF "%choice%"=="6" GOTO menuRoot
IF "%choice%"=="7" GOTO menuRoot
IF "%choice%"=="8" GOTO menuTroubleshoot
IF "%choice%"=="9" GOTO menuCleanup

SET invalidchoice=true

GOTO menuRun

:: Root Menu
:menuRoot
SET activeMenu=menuRoot
SET menuConsoleTitle=OB Argus Panoptes
SET invalidchoice=false

SET menuTitleLong=Panoptes OB
SET menuInfo=Everything needed to get Panoptes back to full strength

SET menuOption0target=menuRoot

SET menuOption1label=Initialization
SET menuOption1target=menuInit
SET menuOption1comment=Get going fast!
SET menuOption1active=true

SET menuOption2label=Installation
SET menuOption2target=menuInstall
SET menuOption2comment=Load software
SET menuOption2active=true

SET menuOption3label=Operator
SET menuOption3target=menuOperator
SET menuOption3comment=Manage Operators
SET menuOption3active=true


SET menuOption8label=Troubleshoot
SET menuOption8target=menuTroubleshoot
SET menuOption8comment=Fix things quick
SET menuOption8active=true

SET menuOption9label=Cleanup
SET menuOption9target=menuCleanup
SET menuOption9comment=Because some people can't clean up after themselves
SET menuOption9active=true

GOTO menuRun
::END Root Menu

:: Initialization Menu
:menuInit
TITLE Initialization
CLS
ECHO.
ECHO Initialization Menu
ECHO.
ECHO 1. Name System
ECHO 2. Join Workgroup
ECHO.

IF "%invalidchoice%"=="false" ECHO Please enter your choice:
IF "%invalidchoice%"=="true" ECHO Please enter your choice: (Invalid choice. Try again) && SET invalidchoice=false

SET /p choice=

CLS
ECHO.
IF "%choice%"=="0" GOTO menuRoot
IF "%choice%"=="1" GOTO optionRenameSystem
IF "%choice%"=="2" GOTO optionJoinWorkgroup
SET invalidchoice=true

GOTO menuInit
:: END Initialization Menu

:optionRenameSystem
ECHO Name System && ECHO.
SET /p sysnamechoice=
powershell -command "Rename-Computer -NewName %sysnamechoice%"
PAUSE
GOTO menuInit

:optionJoinWorkgroup
ECHO Enter Workgroup: && ECHO.
SET /p joinworkgroupchoice=
powershell -command "& {Add-Computer -WorkGroupName "%joinworkgroupchoice%"}"
GOTO menuInit



:: Install Menu
:menuInstall
SET activeMenu=menuInstall
SET menuConsoleTitle=Installers
SET invalidchoice=false

SET menuTitleLong=Installer Menu
SET menuInfo=

SET menuOption0label=Return to main menu
SET menuOption0target=menuRoot
SET menuOption0comment=
SET menuOption0active=true

SET menuOption1label=Cplusplus
SET menuOption1target=installcplusplus
SET menuOption1comment=
SET menuOption1active=true

SET menuOption2label=
SET menuOption2target=installdirectx
SET menuOption2comment=
SET menuOption2active=false

SET menuOption3label=
SET menuOption3target=installjre
SET menuOption3comment=
SET menuOption3active=false

SET menuOption4label=
SET menuOption4target=installpython
SET menuOption4comment=
SET menuOption4active=false

SET menuOption5label=
SET menuOption5target=
SET menuOption5comment=
SET menuOption5active=false

SET menuOption6label=
SET menuOption6target=
SET menuOption6comment=
SET menuOption6active=false

SET menuOption7label=
SET menuOption7target=
SET menuOption7comment=
SET menuOption7active=false

GOTO menuRun
::End Install Menu


:: Operator Menu
:menuOperator
SET :menuOperator
TITLE Operator Menu
CLS
ECHO.
ECHO Operator Menu
ECHO.
ECHO 1. List Operators
ECHO 2. Add Operator
ECHO 3. Remove Operator
ECHO.
IF "%invalidchoice%"=="false" echo Please enter your choice:
IF "%invalidchoice%"=="true" echo Please enter your choice: (Invalid choice. Try again) && SET invalidchoice=false

SET /p choice=

IF "%choice%"=="0" GOTO menuRoot
IF "%choice%"=="1" GOTO ListOp
IF "%choice%"=="2" GOTO AddOp
IF "%choice%"=="3" GOTO RemoveOp

SET invalidchoice=true

GOTO menuRun
::END Operator Menu

:ListOp
CLS
net user
PAUSE
GOTO :menuOperator

:AddOp
CLS
ECHO.
ECHO Set Name: (Leave blank to go back) && ECHO.
SET /p adduser=
IF "%adduser%"=="" GOTO menuOperator
net user "%adduser%" /add
PAUSE
GOTO :menuOperator

:RemoveOp
CLS
ECHO.
net user
ECHO.
ECHO Who do you want to remove?: (Leave blank to go back) && ECHO.
SET /p remuser=
IF "%remuser%"=="" GOTO menuOperator
net user "%remuser%" /remove
PAUSE
GOTO :menuOperator

:: Troubleshooting Menu
:menuTroubleshoot
TITLE Troubleshooting Menu
CLS
ECHO.
ECHO Troubleshooting Menu
ECHO.
ECHO 1. Explorer Bad
ECHO 2. Wifi Bad
ECHO.
IF "%invalidchoice%"=="false" echo Please enter your choice:
IF "%invalidchoice%"=="true" echo Please enter your choice: (Invalid choice. Try again) && SET invalidchoice=false

SET /p choice=

IF "%choice%"=="0" GOTO menuRoot
IF "%choice%"=="1" GOTO troubleshootExplorer
IF "%choice%"=="2" GOTO troubleshootWifi

ECHO Invalid choice. Press any key to try again.

SET invalidchoice=true

GOTO menuTroubleshoot
::END Troubleshooting Menu

:troubleshootExplorer
ECHO I fix expwowaw
PAUSE 
GOTO menuTroubleshoot

:troubleshootWifi
TITLE Cleanup Menu
ECHO I fix da wifi
PAUSE 
GOTO menuTroubleshoot


:: Cleanup Menu
:menuCleanup
TITLE Cleanup Menu
CLS
ECHO.
ECHO Main Menu
ECHO.
ECHO 1. VS Cleanup
ECHO.

IF "%invalidchoice%"=="false" ECHO Please enter your choice:
IF "%invalidchoice%"=="true" ECHO Please enter your choice: (Invalid choice. Try again) && SET invalidchoice=false

SET /p choice=

IF "%choice%"=="0" GOTO menuRoot
IF "%choice%"=="1" GOTO vsCleanup

SET invalidchoice=true

GOTO menuCleanup
:: END Cleanup Menu

:vsCleanup
del /q C:\eula.1028.txt
del /q C:\eula.1031.txt
del /q C:\eula.1033.txt
del /q C:\eula.1036.txt
del /q C:\eula.1040.txt
del /q C:\eula.1041.txt
del /q C:\eula.1042.txt
del /q C:\eula.2052.txt
del /q C:\eula.3082.txt
del /q C:\globdata.ini
del /q C:\install.exe
del /q C:\install.ini
del /q C:\install.res.1028.dll
del /q C:\install.res.1031.dll
del /q C:\install.res.1033.dll
del /q C:\install.res.1036.dll
del /q C:\install.res.1040.dll
del /q C:\install.res.1041.dll
del /q C:\install.res.1042.dll
del /q C:\install.res.2052.dll
del /q C:\install.res.3082.dll
del /q C:\msdia80.dll
del /q C:\VC_RED.cab
del /q C:\VC_RED.MSI
del /q C:\vcredist.bmp

GOTO menuCleanup
