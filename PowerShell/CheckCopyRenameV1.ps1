$suffix = "HP.rpt","PC.rpt","SP.rpt"
$LookingFor = get-childitem -Path .\ -Include *DZ.rpt -Recurse
    if ((test-path -Path *DZ.rpt) -eq  $false){
        Write-Host No *DZ.rpt Files in this folder....
        } else {
            foreach ($LookingFor1 in $LookingFor){
                $prefix = $LookingFor1.name.Substring(0,$lookingFor1.name.Length-6)
                for ($i=0; $i -ne 3;$i++) {
                $FullName =@($prefix+$suffix[$i])             
                    foreach($FullNameFile in $FullName){
                        if ((Test-Path -Path $FullNameFile) -Eq $false) {
                            Copy-Item -Path $LookingFor1 -Destination $FullNameFile
                            Write-Host copying $FullNameFile

                        } else { Write-Host $FullName exist}
                                                       }
                                          }
                                                 }
                }
        