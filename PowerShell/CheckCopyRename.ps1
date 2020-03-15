$suffix = "HP.rpt","PC.rpt","SP.rpt"
$LookingFor = get-childitem -Path .\ -Include *DZ.rpt -Recurse
if ((test-path -Path *DZ.rpt) -eq  $true){
foreach ($prefix in $LookingFor.Name){
    $prefix = $prefix.Substring(0,$prefix.Length-6)
    foreach ($suffix in $suffix) {
        $FullName = $prefix+$suffix
        if ((Test-Path -Path $FullName) -eq $true ){
            write-host Le fichier $FullName existe déja
         } else {
            foreach ($LookingFor1 in $LookingFor){
            Write-Host Do you want create $FullName ?
            Write-Host $LookingFor1
            Copy-Item -Path $LookingFor1 -Destination $FullName}
         }
    }        
}
}else { Write-Host There are no files with ....DZ.rtp name here}