param(
    [string]$DeviceName = "pTron TWS"
)

# Get the Bluetooth device info
$device = Get-PnpDevice | Where-Object {
    $_.FriendlyName -eq $DeviceName -and $_.Class -eq 'Bluetooth'
}

if ($device) {
    if ($device.Status -eq "OK") {
        Write-Host "Device is currently connected. Disconnecting..."
        Disable-PnpDevice -InstanceId $device.InstanceId -Confirm:$false
        Start-Sleep -Seconds 2
        Write-Host "Reconnecting..."
        Enable-PnpDevice -InstanceId $device.InstanceId -Confirm:$false
        Write-Host "$DeviceName has been toggled (reconnected)."
    } else {
        Write-Host "Device is not connected. Attempting to connect..."
        Enable-PnpDevice -InstanceId $device.InstanceId -Confirm:$false
        Write-Host "$DeviceName has been connected."
    }
} else {
    Write-Host "❌ Device not found. Make sure the name is correct."
}
