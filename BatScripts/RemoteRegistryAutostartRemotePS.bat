set service=remoteregistry
set /p host=nom du host :
set /p service=Nom du service:
psexec \\%host% net start %service%
psexec \\%host% sc config %service% start= auto
psexec \\%host% -s powershell Enable-PSRemoting -Force