net user administrateur /active:yes
net user administrateur Pa$$w0rd
net user /add Blister
net user /delete hp
usbstorage_disable.reg
echo "changing computer name"
set /p host=Please enter the new computer name :
WMIC ComputerSystem where Name=%computername% call Rename Name=$host