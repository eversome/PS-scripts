# Replace 'Ethernet' with the name of your network adapter
$interfaceName = "Ethernet"

# Notify user about the disabling process
Write-Host "Disabling network adapter: $interfaceName"

# Disable the network adapter
Disable-NetAdapter -Name $interfaceName -Confirm:$false

# Notify user that the adapter has been disabled and the script will pause for 10 minutes
Write-Host "$interfaceName has been disabled. Waiting for 10 minutes before re-enabling..."

# Wait for 600 seconds (10 minutes)
Start-Sleep -Seconds 600

# Notify user about the enabling process
Write-Host "Re-enabling network adapter: $interfaceName"

# Enable the network adapter
Enable-NetAdapter -Name $interfaceName -Confirm:$false

# Notify user that the adapter has been re-enabled
Write-Host "$interfaceName has been re-enabled."
