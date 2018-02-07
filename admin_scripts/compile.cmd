@echo off
:: Deployment script for windows
cls

echo we are in %cd%

set output=..\out

::echo Don't forget to compile MarkDown sources into HTML by running "DocPad run"!
::echo ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ 
::echo 

:: cleanup first
echo removing static content from the deployment directory
rd %output% /s /q

:: build with blacksmith
::pushd ..\blacksmith
::call build.cmd
::popd

::pushd ..\src

:: copy original (frontpage) content first.
::echo Copying Frontpage files...
::xcopy frontpage ..\site\static /v /i /s /y /q
:: http://www.microsoft.com/resources/documentation/windows/xp/all/proddocs/en-us/xcopy.mspx
:: verify, create destination directory, subdirectories, suppress prompt, messages

:: overwrite with generated (blacksmith) content.
::echo Copying Blacksmith files.
::xcopy ..\blacksmith\public ..\site\static /v /y

:: overwrite with docpad-generated content.
::echo Copying DocPad files...
::xcopy docpad\out %output% /v /i /s /y /q

:: compile Harp sources
echo compiling Harp content into output directory.
call harp compile ..\src %output%

::echo copying php site files
::xcopy ..\site\php %output% /v /i /s /y /q
