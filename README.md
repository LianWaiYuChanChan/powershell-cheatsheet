# powershell-cheatsheet
Examples of powershell.

# Tips
* Tab even you type option. It will auto completion.
* Better Terminal: ConEmu. Just execute powershell.exe in it.

# Directory size:

```ps1
Get-ChildItem ConcurrentJava -Recurse | Measure-Object -Sum Length | Select-Object @{Name="Path"; Expression={$directory.FullName}},@{Name="Files"; Expression={$_.Count}},@{Name="Size"; Expression={$_.Sum/1KB}}
```
-------

```ps1
foreach ($file in (Get-ChildItem | Where-Object {$_.psiscontainer -eq $true})) { 
Get-ChildItem $file -Recurse | Measure-Object -Sum Length | Select-Object @{Name="Path"; Expression={$directory.FullName}},@{Name="Files"; Expression={$_.Count}},@{Name="Size"; Expression={$_.Sum/1MB}}
}
```
## Error Handling
```ps1
Remove-Item "NoExist" -ErrorAction "SilentlyContinue"
``

## Sound

* http://jeffwouters.nl/index.php/2012/03/get-your-geek-on-with-powershell-and-some-music/ 

# Reference
* https://yaowenjie.github.io/front-end/powershell-cheatsheet
* http://www.linkedin.com/pulse/technical-thursdays-get-directory-sizes-stupidly-fast-carlos-nunez (Directory size)
