# Bluetooth Toggle CLI (PowerShell)

> One-click PowerShell script to reconnect or toggle a specific paired Bluetooth device on Windows 10/11.

## 💻 Features
- Connect/disconnect a Bluetooth device via script
- No external tools or drivers needed
- Supports Windows PowerShell 5+

## ⚙️ Requirements
- Your Bluetooth device must be already paired
- Run script with Administrator privileges

## 🚀 How to Use

1. Clone/download the repo
2. Edit the script:

```powershell
[string]$DeviceName = "Your Device Name"
3. Run as Admin:

```powershell
powershell.exe -ExecutionPolicy Bypass -File "ToggleBluetoothDevice.ps1"

🛡 Disclaimer
Tested on Windows 11. Some devices may not support toggling via PnP.