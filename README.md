# powershell-cheatsheet
Examples of powershell.

# Tips
* Tab even you type option. It will auto completion.
* Better Terminal: ConEmu. Just execute powershell.exe in it.

# Directory size:
```
Get-ChildItem ConcurrentJava -Recurse | Measure-Object -Sum Length | Select-Object @{Name="Path"; Expression={$directory.FullName}},@{Name="Files"; Expression={$_.Count}},@{Name="Size"; Expression={$_.Sum/1KB}}
```

#Reference
* https://yaowenjie.github.io/front-end/powershell-cheatsheet
* http://www.linkedin.com/pulse/technical-thursdays-get-directory-sizes-stupidly-fast-carlos-nunez (Directory size)
