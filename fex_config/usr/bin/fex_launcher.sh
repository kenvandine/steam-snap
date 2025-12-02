#!/bin/sh
mkdir -p /home/$USER/snap/steam/common/.fex-emu/
export FEX_SERVERSOCKETPATH=/home/$USER/snap/steam/common/.fex-emu/FEXServer.Socket
export FEX_APP_CONFIG_LOCATION=/snap/steam/current/fex_config/
/snap/steam/current/usr/bin/FEXBash /snap/steam/current/usr/lib/steam/bin_steam.sh -no-cef-sandbox
