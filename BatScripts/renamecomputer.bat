
set /p host=nom du host :
set /p newname=Nouveau nom de l'ordinateur :

NETDOM RENAMECOMPUTER %host% /Newname:%newname% /UserD:admin /PasswordD:@dmin/123 /Force

/reboot