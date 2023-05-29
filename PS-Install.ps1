# Copy the XML and PS1 files
Copy-Item ".\MapNetworkDrive.xml" $env:temp
# Register a new Scheduled Task using the XML
Register-ScheduledTask -xml (Get-Content $env:temp\MapNetworkDrive.xml | Out-String) -TaskName "MapNetworkDrive" -TaskPath "\"
