$textfile = Get-ADComputer -Filter "name -like 'ALGspebur*'"

$textfile -is [array]

foreach ($line in $textfile)
{
Get-LoggedOnUser $line.dnshostname | ft -HideTableHeaders -AutoSize
}


<#foreach ($line in [System.IO.File]::ReadLines("d:\computers.txt")){
Get-LoggedOnUser $line
}#>