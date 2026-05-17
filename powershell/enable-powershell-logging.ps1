New-Item -Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\PowerShell\ScriptBlockLogging -Force

Set-ItemProperty `
-Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\PowerShell\ScriptBlockLogging `
-Name EnableScriptBlockLogging `
-Value 1

New-Item `
-Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\PowerShell\ModuleLogging `
-Force

Set-ItemProperty `
-Path HKLM:\SOFTWARE\Policies\Microsoft\Windows\PowerShell\ModuleLogging `
-Name EnableModuleLogging `
-Value 1
