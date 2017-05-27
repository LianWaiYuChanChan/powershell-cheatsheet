#Help
help get-command
help get-command -examples

#Check env variable
echo $env:Path
Write-Output $env:Path

#Find file
Get-ChildItem -Recurse -Include '*.xlsx'

#Grep file content
cat somefile.txt | where { $_ -match "some_regexp"}
Get-content somefile.txt|findstr "someregexp"
Select-String "some_regexp" somefile.txt

#Get directory size
Get-ChildItem -Recurse .\UnitySystem | Measure-Object -Property length -Sum

#Get all sub directory
 Get-ChildItem  | where {$_.psiscontainer -eq "True"}
 
#Try to get all sub directory size (TODO: display the dir name)
Get-ChildItem | where {$_.psiscontainer -eq "True"} | foreach {Get-ChildItem $_| Measure-Object -Property length -Sum}


#Get alias
Get-Alias | Where-Object {$_ -match "cat"}


#Get file size
(Get-Item .\10.141.45.85.har).length/1kb


#String operation split
$env:Path -Split ";"

#Define string variable
$a="a:a:a"
$a -Split ":"

#which
Get-Command python

# Sound

Write-Host "`a`a`a"
[console]::beep(200,100)   #200 is volumne, 100 is duration.


#As administrator

PS> Start-Process powershell -Verb runAs


#Append to file
cat A.file | out-file -Append -Encoding ascii B.file
