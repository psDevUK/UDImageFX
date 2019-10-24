Import-Module -Name UniversalDashboard.Community
Import-Module .\UniversalDashboard.UDImageFX
Get-UDDashboard | Stop-UDDashboard
Start-UDDashboard -Port 10005 -Dashboard (
    New-UDDashboard -Title "Powershell UniversalDashboard" -Content {
        New-UDLayout -Columns 4 -Content {
            New-UDImageFx -Image "http://get-cmd.com/wp-content/uploads/2017/11/universaldashboard.png" -Animation flipInX -Duration 4s
            New-UDImageFx -Image "http://get-cmd.com/wp-content/uploads/2017/11/universaldashboard.png" -Animation blurInLeft -Duration 4s
            New-UDImageFx -Image "http://get-cmd.com/wp-content/uploads/2017/11/universaldashboard.png" -Animation fadeInUp -Duration 4s
            New-UDImageFx -Image "http://get-cmd.com/wp-content/uploads/2017/11/universaldashboard.png" -Animation fillIn -Duration 4s

        }
    }
)
