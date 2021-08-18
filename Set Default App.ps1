$file1 = 'C:\Program Files (x86)\Adobe\Acrobat DC\Acrobat\Acrobat.exe'
$file2 = 'C:\Program Files (x86)\Adobe\Acrobat Reader DC\Reader\AcroRd32.exe'


if (Test-Path -Path $file1 -PathType Leaf) {
     try {
         Write-Host "Adobe Acrobat DC Found"
         Import-StartLayout -layoutpath C:\Default_Start_Layout1.xml -mountpath $Env:SYSTEMDRIVE\
         Exit 0

     }
     catch {
         throw $_.Exception.Message
     }
 }

 if (Test-Path -Path $file2 -PathType Leaf) {
     try {
         Write-Host "Adobe Acrobat Reader DC Found"
         Import-StartLayout -layoutpath C:\Default_Start_Layout2.xml -mountpath $Env:SYSTEMDRIVE\
         Exit 0

     }
     catch {
         throw $_.Exception.Message
     }
 }

 else {
     Write-Host "Adobe Reader/Acrobat not Found"
     Exit 0
 }
