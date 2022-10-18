# Un script que permeti localitzar un fitxer o directori a una ruta concreta
#Preguntar que buscara i on?
Write-Output "On ho vols cercar ?"
$ruta = Read-Host "Ruta -> "
$existeix1= Test-Path $ruta
if ($existeix1 -eq $True){
    Write-Output "Ruta valida"
    $arxiu = Read-Host "Que vols cercar a "$ruta

    #Comprovar 
    $existeix2= Test-Path $ruta"/"$arxiu
    if ($existeix2 -eq $True)
    {
        Write-Output $arxiu" si que existeix"
    }
    else 
    {
        Write-Output $arxiu" no existeix"
    }
}
else 
    {
        Write-Output "Ruta invalida"
    }

