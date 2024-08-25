# Script para instalar vários softwares usando Winget

# Atualiza a lista de pacotes do Winget
winget upgrade --all

# Instala o Brave Browser
winget install --id=Brave.Brave

# Instala o WhatsApp
winget install --id=WhatsApp.WhatsApp

# Instala o Steam
winget install --id=Valve.Steam

# Instala o Epic Games Launcher
winget install --id=EpicGames.EpicGamesLauncher

# Instala o Spotify
winget install --id=Spotify.Spotify

# Instala o Foxit PDF Reader
winget install --id=Foxit.FoxitPDFReader

# Instala o Revo Uninstaller
winget install --id=VSRevoGroup.RevoUninstaller

# Instala o Discord
winget install --id=Discord.Discord

# Instala o VLC Player
winget install --id=VideoLAN.VLC

# Instala o Microsoft Visual C++ Redistributable 2013
winget install --id=Microsoft.VisualCppRedistributable.2013

# Instala o Microsoft Visual C++ Redistributable (versão mais recente)
winget install --id=Microsoft.VCRedist.2015+.x64

# Instala o EA App
winget install --id=ElectronicArts.EADesktop

# Instala o CrystalDiskInfo
winget install --id=CrystalDewWorld.CrystalDiskInfo

# Instala o CPUID HWMonitor
winget install --id=CPUID.HWMonitor

# Instala o 7-Zip
winget install --id=7zip.7zip

# Instala o FreeFileSync
winget install --id=FreeFileSync.FreeFileSync

# Instala a Ferramenta de Captura
winget install --id=Microsoft.SnippingTool

# Instala o Nilesoft Shell
winget install --id=Nilesoft.Shell

# Instala o OnlyOffice Desktop
winget install --id=ONLYOFFICE.DesktopEditors

# Instala o Visual Studio Code
winget install --id=Microsoft.VisualStudioCode

# Mensagem de conclusão
Write-Host "Instalação concluída!"