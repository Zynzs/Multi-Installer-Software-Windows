@echo off
echo Starting installation for Multi-Installer Software on Windows...

REM Check for administrative privileges
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo Please run this script as an administrator.
    exit /b
)

REM Define installation directory
set INSTALL_DIR="C:\Program Files\MultiInstaller"

REM Create installation directory
if not exist %INSTALL_DIR% (
    mkdir %INSTALL_DIR%
)

REM Check if Google Chrome is already installed
if exist "C:\Program Files\Google\Chrome\Application\chrome.exe" (
    echo Google Chrome is already installed.
    goto :SKIP_CHROME_INSTALLATION
)

REM Request user if they want to install Google Chrome
echo Google Chrome is not installed. Do you want to install it? (Y/N)
set /p INSTALL_CHROME=
if /i %INSTALL_CHROME% neq Y (
    goto :SKIP_CHROME_INSTALLATION
)

REM Automatically download Google Chrome
echo Downloading Google Chrome...
powershell -command "(New-Object System.Net.WebClient).DownloadFile('https://dl.google.com/chrome/install/GoogleChromeStandaloneEnterprise64.msi', '%INSTALL_DIR%\GoogleChromeStandaloneEnterprise64.msi')"
echo Google Chrome downloaded successfully.*

REM Install Google Chrome silently
echo Installing Google Chrome...
msiexec /i %INSTALL_DIR%\GoogleChromeStandaloneEnterprise64.msi /install /S /norestart
echo Google Chrome installed successfully.*

echo Installation completed successfully.

:SKIP_CHROME_INSTALLATION
echo Skipping Google Chrome installation...

REM Check if Mozilla Firefox is already installed
if exist "C:\Program Files\Mozilla Firefox\firefox.exe" (
    echo Mozilla Firefox is already installed.
    goto :SKIP_FIREFOX_INSTALLATION
)

REM Request user if they want to install Mozilla Firefox
echo Mozilla Firefox is not installed. Do you want to install it? (Y/N)
set /p INSTALL_FIREFOX=
if /i %INSTALL_FIREFOX% neq Y (
    goto :SKIP_FIREFOX_INSTALLATION
)

REM Automatically download Mozilla Firefox
echo Downloading Mozilla Firefox...
powershell -command "(New-Object System.Net.WebClient).DownloadFile('https://download-installer.cdn.mozilla.net/pub/firefox/releases/90.0/win64/en-US/Firefox%20Installer.exe', '%INSTALL_DIR%\FirefoxInstaller.exe')"
echo Mozilla Firefox downloaded successfully.*

REM Install Mozilla Firefox silently
echo Installing Mozilla Firefox...
%INSTALL_DIR%\FirefoxInstaller.exe /install /S /norestart
echo Mozilla Firefox installed successfully.*

echo Installation completed successfully.

:SKIP_FIREFOX_INSTALLATION
echo Skipping Mozilla Firefox installation...

REM Check if Opera GX is already installed
if exist "C:\Program Files\Opera GX\launcher.exe" (
    echo Opera GX is already installed.
    goto :SKIP_OPERAGX_INSTALLATION
)

REM Request user if they want to install Opera GX
echo Opera GX is not installed. Do you want to install it? (Y/N)
set /p INSTALL_OPERAGX=
if /i %INSTALL_OPERAGX% neq Y (
    goto :SKIP_OPERAGX_INSTALLATION
)

REM Automatically download Opera GX
echo Downloading Opera GX...
powershell -command "(New-Object System.Net.WebClient).DownloadFile('https://www.opera.com/fr/computer/thanks?ni=eapgx&os=windows', '%INSTALL_DIR%\OperaGXSetup.exe')"
echo Opera GX downloaded successfully.*

REM Install Opera GX silently
echo Installing Opera GX...
%INSTALL_DIR%\OperaGXSetup.exe /install /S /norestart
echo Opera GX installed successfully.*

echo Installation completed successfully.

:SKIP_OPERAGX_INSTALLATION
echo Skipping Opera GX installation...

REM Check if Discord is already installed
if exist "C:\Users\%USERNAME%\AppData\Local\Discord\Update.exe" (
    echo Discord is already installed.
    goto :SKIP_DISCORD_INSTALLATION
)

REM Request user if they want to install Discord
echo Discord is not installed. Do you want to install it? (Y/N)
set /p INSTALL_DISCORD=
if /i %INSTALL_DISCORD% neq Y (
    goto :SKIP_DISCORD_INSTALLATION
)

REM Automatically download Discord
echo Downloading Discord...
powershell -command "(New-Object System.Net.WebClient).DownloadFile('https://discord.com/api/download?platform=win', '%INSTALL_DIR%\DiscordSetup.exe')"
echo Discord downloaded successfully.*

REM Install Discord silently
echo Installing Discord...
%INSTALL_DIR%\DiscordSetup.exe /install /S /norestart
echo Discord installed successfully.*

echo Installation completed successfully.

:SKIP_DISCORD_INSTALLATION
echo Skipping Discord installation...

REM Check if Steam is already installed
if exist "C:\Program Files (x86)\Steam\Steam.exe" (
    echo Steam is already installed.
    goto :SKIP_STEAM_INSTALLATION
)

REM Request user if they want to install Steam
echo Steam is not installed. Do you want to install it? (Y/N)
set /p INSTALL_STEAM=
if /i %INSTALL_STEAM% neq Y (
    goto :SKIP_STEAM_INSTALLATION
)

REM Automatically download Steam
echo Downloading Steam...
powershell -command "(New-Object System.Net.WebClient).DownloadFile('https://cdn.cloudflare.steamstatic.com/client/installer/SteamSetup.exe', '%INSTALL_DIR%\SteamSetup.exe')"
echo Steam downloaded successfully.*

REM Install Steam silently
echo Installing Steam...
%INSTALL_DIR%\SteamSetup.exe /install /S /norestart
echo Steam installed successfully.*

echo Installation completed successfully.

:SKIP_STEAM_INSTALLATION
echo Skipping Steam installation...

REM Check if Battle.net is already installed
if exist "C:\Program Files (x86)\Battle.net\Battle.net Launcher.exe" (
    echo Battle.net is already installed.
    goto :SKIP_BATTLENET_INSTALLATION
)

REM Request user if they want to install Battle.net
echo Battle.net is not installed. Do you want to install it? (Y/N)
set /p INSTALL_BATTLENET=
if /i %INSTALL_BATTLENET% neq Y (
    goto :SKIP_BATTLENET_INSTALLATION
)

REM Automatically download Battle.net
echo Downloading Battle.net...
powershell -command "(New-Object System.Net.WebClient).DownloadFile('https://www.blizzard.com/download/GetFile?file=Battle.net-Setup.exe', '%INSTALL_DIR%\BattleNetSetup.exe')"
echo Battle.net downloaded successfully.*

REM Install Battle.net silently
echo Installing Battle.net...
%INSTALL_DIR%\BattleNetSetup.exe /install /S /norestart
echo Battle.net installed successfully.*

echo Installation completed successfully.

:SKIP_BATTLENET_INSTALLATION
echo Skipping Battle.net installation...

REM Check if Epic Games Launcher is already installed
if exist "C:\Program Files (x86)\Epic Games\Launcher\Portal\Binaries\Win64\EpicGamesLauncher.exe" (
    echo Epic Games Launcher is already installed.
    goto :SKIP_EPICGAMES_INSTALLATION
)

REM Request user if they want to install Epic Games Launcher
echo Epic Games Launcher is not installed. Do you want to install it? (Y/N)
set /p INSTALL_EPICGAMES=
if /i %INSTALL_EPICGAMES% neq Y (
    goto :SKIP_EPICGAMES_INSTALLATION
)

REM Automatically download Epic Games Launcher
echo Downloading Epic Games Launcher...
powershell -command "(New-Object System.Net.WebClient).DownloadFile('https://launcher-public-service-prod06.ol.epicgames.com/launcher/api/installer/download/EpicGamesLauncherInstaller.msi', '%INSTALL_DIR%\EpicGamesLauncherInstaller.msi')"
echo Epic Games Launcher downloaded successfully.*

REM Install Epic Games Launcher silently
echo Installing Epic Games Launcher...
msiexec /i %INSTALL_DIR%\EpicGamesLauncherInstaller.msi /install /S /norestart
echo Epic Games Launcher installed successfully.*

echo Installation completed successfully.

:SKIP_EPICGAMES_INSTALLATION
echo Skipping Epic Games Launcher installation...

REM Check if Spotify is already installed
if exist "C:\Users\%USERNAME%\AppData\Roaming\Spotify\Spotify.exe" (
    echo Spotify is already installed.
    goto :SKIP_SPOTIFY_INSTALLATION
)

REM Request user if they want to install Spotify
echo Spotify is not installed. Do you want to install it? (Y/N)
set /p INSTALL_SPOTIFY=
if /i %INSTALL_SPOTIFY% neq Y (
    goto :SKIP_SPOTIFY_INSTALLATION
)

REM Automatically download Spotify
echo Downloading Spotify...
powershell -command "(New-Object System.Net.WebClient).DownloadFile('https://download.scdn.co/SpotifySetup.exe', '%INSTALL_DIR%\SpotifySetup.exe')"
echo Spotify downloaded successfully.*

REM Install Spotify silently
echo Installing Spotify...
%INSTALL_DIR%\SpotifySetup.exe /install /S /norestart
echo Spotify installed successfully.*

echo Installation completed successfully.

:SKIP_SPOTIFY_INSTALLATION
echo Skipping Spotify installation...

REM Check if VLC Media Player is already installed
if exist "C:\Program Files\VideoLAN\VLC\vlc.exe" (
    echo VLC Media Player is already installed.
    goto :SKIP_VLC_INSTALLATION
)

REM Request user if they want to install VLC Media Player
echo VLC Media Player is not installed. Do you want to install it? (Y/N)
set /p INSTALL_VLC=
if /i %INSTALL_VLC% neq Y (
    goto :SKIP_VLC_INSTALLATION
)

REM Automatically download VLC Media Player
echo Downloading VLC Media Player...
powershell -command "(New-Object System.Net.WebClient).DownloadFile('https://get.videolan.org/vlc/3.0.16/win64/vlc-3.0.16-win64.exe', '%INSTALL_DIR%\VLCSetup.exe')"
echo VLC Media Player downloaded successfully.*

REM Install VLC Media Player silently
echo Installing VLC Media Player...
%INSTALL_DIR%\VLCSetup.exe /install /S /norestart
echo VLC Media Player installed successfully.*

echo Installation completed successfully.

:SKIP_VLC_INSTALLATION
echo Skipping VLC Media Player installation...

echo Installation completed successfully.

del /q %INSTALL_DIR%\*.*

rmdir %INSTALL_DIR%

REM Check if all installations are installed
echo All installations are completed successfully.

REM Automatically close the command prompt window after 5 seconds
timeout /t 5 /nobreak >nul
exit

