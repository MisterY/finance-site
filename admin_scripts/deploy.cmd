call compile.cmd

:: open google app engine.
:: should try command-line version below. It allows parameters.
:: C:\Program Files (x86)\Google\google_appengine\appcfg.py 
echo You need to have Python installed, as well as Google App Engine.
if exist "C:\Program Files (x86)\Google\google_appengine\launcher\GoogleAppEngineLauncher.exe" (
:: using GUI for proxy settings (?)	
"C:\Program Files (x86)\Google\google_appengine\launcher\GoogleAppEngineLauncher.exe"
) else (
echo ERROR: Google App Engine not installed!
)
::pushd ..
:: Work path
::C:\programs\dev\Python27\python "C:\Program Files (x86)\Google\google_appengine\appcfg.py" update site
::popd

echo Deployment complete.
pause