$packageName = 'applicationcompatibilitytoolkit'
$installerType = 'EXE'
$url = 'http://download.microsoft.com/download/D/3/3/D33A8F5D-A7E1-4BBE-B04D-7A688785A229/ApplicationCompatibilityToolkitSetup.exe'
$silentArgs = "/C:`"msiexec.exe /i act.msi /l*v $env:temp\CHOCO-INSTALL-$packageName.log /qn`""
$validExitCodes = @(0,3010)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes

Write-Output "***************************************************************************************"
Write-Output "*  INSTRUCTIONS: Use the start menu to search for `"Compatibility Administrator...`"  *"
Write-Output "*   More Info:                                                                        *"
Write-Output "*   https://www.microsoft.com/en-us/download/details.aspx?id=7352                     *"
Write-Output "***************************************************************************************"