$computers = Get-ADComputer -filter {(Enabled -eq $false)} | Select-Object DistinguishedName | ft -HideTableHeaders
$computers
foreach ($computerline in $computers){
Move-ADObject -Identity $computerline -TargetPath:"OU=Ordinateurs Désactivé,DC=IMC,DC=LAN"
}