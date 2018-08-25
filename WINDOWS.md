

## Moust

#### Invert scrolling
Open SpowerShell as admin
```
Get-ItemProperty HKLM:\SYSTEM\CurrentControlSet\Enum\HID\*\*\Device` Parameters FlipFlopWheel -EA 0 | ForEach-Object { Set-ItemProperty $_.PSPath FlipFlopWheel 1 }
```

#### Disable mouse acceleration
https://www.gamingscan.com/how-to-disable-mouse-acceleration-in-windows/
