# Set Working Directory
Split-Path $MyInvocation.MyCommand.Path | Push-Location
[Environment]::CurrentDirectory = $PWD

Remove-Item "$env:RELOADEDIIMODS/fftivc.gameplay.twohands/*" -Force -Recurse
dotnet publish "./fftivc.gameplay.twohands.csproj" -c Release -o "$env:RELOADEDIIMODS/fftivc.gameplay.twohands" /p:OutputPath="./bin/Release" /p:ReloadedILLink="true"

# Restore Working Directory
Pop-Location