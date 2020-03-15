set /p host=nom du host :
psexec \\%host% -u imc\admin -p Pa$$w0rd -c \\192.168.0.99\documents\PB.exe -q ACCEPT_EULA=1 INSTALLDESKTOPSHORTCUT=1