
<<<<<<< HEAD
Try 
  {
  Start-ChocolateyProcessAsAdmin "/x{0F5AEBB0-43F3-4571-ACE7-A7942E8AA179} /l*v $env:temp\CHOCO-UNINSTALL-applicationcompatibilitytoolkit.log /qn" 'msiexec.exe' -ValidExitCodes @(0,3010)
  Write-ChocolateySuccess $package
  }
catch {
  Write-ChocolateyFailure $package "$($_.Exception.Message)"
  throw
}
=======
Uninstall-ChocolateyPackage -PackageName 'registrymanager' -FileType 'exe' -SilentArgs "/SILENT /LOG" -File "C:\Program Files\Registrar Registry Manager\unins000.exe" -ValidExitCodes @(0,3010)
>>>>>>> d0171b301a6fec3ca53b3191ba44d9c46e56c1fe
