$devices = Get-WmiObject -Class Win32_PnPEntity | Where-Object {($_.Name -like "*Displaylink*" -or $_.Name -like "*dock*" -or $_.Caption -like "*docking*") -and $_.Status -like "OK"} | Select-Object Name, Manufacturer, DeviceID

foreach ($device in $devices) {
    "Nom : $($device.Name)"
    "Fabricant : $($device.Manufacturer)"
    "ID du périphérique : $($device.DeviceID)"
    "--------------------------"
}
exit
