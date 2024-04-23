Get-WmiObject -Class Win32_PnPEntity | Where-Object {($_.name -like "*Displaylink*" -or $_.name -like "*dock*" -or $_.Caption -like "*docking*" )-and $_.Status -like "OK"}  | Select-Object Name, Manufacturer, DeviceID
exit
