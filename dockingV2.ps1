Get-WmiObject -Class Win32_PnPEntity | Where-Object {($_.name -like "*Displaylink*" -or $_.name -like "*dock*")-and $_.Status -like "OK"}  | Select-Object Name
