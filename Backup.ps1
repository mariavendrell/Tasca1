# Un script que permeti realitzar còpies de seguretat d'un directori a una ruta assignada com a paràmetre
$Backup=$args[0]
$RutaBackup=$args[1]

if ($Backup -eq $null -And $RutaBackup -eq $null){
    Write-Output "Els parametres que m'has donat no son valids"
}
else 
{
    #Comprovar que els arguments siguin valits
    $existeix1= Test-Path $Backup
    $existeix2= Test-Path $RutaBackup

    if ($existeix1 -And $existeix2 -eq $True)
    {
        Copy-Item -Path $Backup -Destination $RutaBackup -Recurse -Force
        Write-Output "Copia de seguretat realitzada"
    }
    else
    {
        Write-Output "Els parametres que m'has donat no son valids"
    }
}
