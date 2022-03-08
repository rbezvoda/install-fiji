Import-Module -Name Microsoft.PowerShell.Archive
$tmp_path = [System.Environment]::ExpandEnvironmentVariables("%temp%")
$imagej_zip_file = "$tmp_path\imagej.zip"
Invoke-WebRequest -Uri "https://downloads.imagej.net/fiji/latest/fiji-win64.zip" -OutFile $imagej_zip_file
Expand-Archive -path $imagej_zip_file -DestinationPath C:\ -Force
New-Item -ItemType SymbolicLink -Path "C:\Users\Public\Desktop\Fiji.lnk" -Target "C:\Fiji.app\ImageJ-win64.exe"
Remove-Item $imagej_zip_file