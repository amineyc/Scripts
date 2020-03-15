
$textfile = Get-ADComputer -Filter "name -like 'ALGBIOLAP10'"
echo $textfile.DNSHostName

foreach ($client in $textfile.DNSHostName){
    psexec \\$client net start remoteregistry
    Set-Service -Name remoteregistry -Computer $client -StartupType Automatic
}