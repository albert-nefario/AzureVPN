$taskExists = Get-ScheduledTask | Where-Object {$_.TaskName -like "MapNetworkDrive"}

if($taskExists) {
  Write-Host "Success"
  Exit 0
} else {
  Exit 1
}
